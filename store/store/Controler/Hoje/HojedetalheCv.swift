//
//  HojedetalheCv.swift
//  store
//
//  Created by Mac Neia on 15/07/21.
//

import UIKit


class HojeDetalheVc: UIViewController {
    
    var hojeApp: HojeApp? {
        didSet {
            
            if let hojeApp = hojeApp {
                
                if hojeApp.apps == nil {
                    self .adicionarUnico()
                } else {
                    self.adicionarMultiplo()
                }
         }
        }
    }
    
    let fecharButton: UIButton = .fecharButton()
    
    var centerView: UIView?
    var frame: CGRect?
    
    var topConstraint: NSLayoutConstraint?
    var leadingConstraint: NSLayoutConstraint?
    var widthConstraint: NSLayoutConstraint?
    var heightConstraint: NSLayoutConstraint?
    
    let hojeDetalheUnicoVC = HojedetalheUnicoVC()
    let hojeDetalheMultiploVC = HojeDetalheMultiploVC()
    
    var handlerFechar: (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear // clear tranparente
    }
    
    func adicionarBotaoFechar () {
        view.addSubview(fecharButton)
        
        fecharButton.alpha = 0
        fecharButton.addTarget(self, action: #selector(handleFecharClique), for: .touchUpInside)
        fecharButton.preencher(
            top: self.view.safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: view.trailingAnchor,
            padding: .init(top: 18, left: 0, bottom: 0, right: 24),
            size: .init(width: 32, height: 32)
        )
        
        UIView.animate(withDuration: 0.3, delay: 0.2, options: .showHideTransitionViews, animations: {
            self.fecharButton.alpha = 1
        }, completion: nil)
            
    }
    
    func adicionarUnico () {
        hojeDetalheUnicoVC.hojeApp = self.hojeApp
        self.centerView = hojeDetalheUnicoVC.view
        self.animacao()
        
    }
        
        func adicionarMultiplo () {
            hojeDetalheMultiploVC.hojeApp = self.hojeApp
        self.centerView = hojeDetalheMultiploVC.view
        self.animacao()
        
        }
        
    
    func animacao () {
        
        guard let centerView = self.centerView else {return}
        guard let frame = self.frame else {return}
        
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.layer.cornerRadius = 16
        centerView.clipsToBounds = true
        
        view.addSubview(centerView)
        self.adicionarBotaoFechar()
        
        self.topConstraint = centerView.topAnchor.constraint(equalTo: view.topAnchor, constant: frame.origin.y)
        self.leadingConstraint = centerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: frame.origin.x)
        self.widthConstraint = centerView.widthAnchor.constraint(equalToConstant: frame.width)
        self.heightConstraint = centerView.heightAnchor.constraint(equalToConstant: frame.height)
        
        self.topConstraint?.isActive = true
        self.leadingConstraint?.isActive = true
        self.widthConstraint?.isActive = true
        self.heightConstraint?.isActive = true
        
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .overrideInheritedCurve, animations: {
            
            self.topConstraint?.constant = 0
            self.leadingConstraint?.constant = 0
            self.widthConstraint?.constant = self.view.frame.width
            self.heightConstraint?.constant = self.view.frame.height
            
            self.centerView?.layer.cornerRadius = 0
            
            self.view.layoutIfNeeded()
            
        }, completion: nil)
            
     }
    
    func animacaoFechar () {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .overrideInheritedCurve, animations: {
            
            if let frame = self.frame {
                self.topConstraint?.constant = frame.origin.y
                self.leadingConstraint?.constant = frame.origin.x
                self.widthConstraint?.constant = frame.width
                self.heightConstraint?.constant = frame.height
            
                self.centerView?.layer.cornerRadius = 16
                
                self.view.layoutIfNeeded()
            }
            
        }) { (_) in
            self.dismiss(animated: false, completion: nil)
        }
      }
    
    @objc func handleFecharClique () {
        self.fecharButton.isHidden = true
        self.handlerFechar?()
        self.animacaoFechar()
        
    
    }
    }
    
