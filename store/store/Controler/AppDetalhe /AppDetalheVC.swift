//
//  AppDetalheVC.swift
//  store
//
//  Created by Mac Neia on 12/07/21.
//

import UIKit

class AppDetalheVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let headerId = "headerId"
    let descricaoId = "descricaoId"
    let screenshotId = "screenshotId"
    let avaliacaoid = "avaliacaoid"
    
    let activityIndicadorView: UIActivityIndicatorView = {
        let ai = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
        ai.color = .cinza
        ai.startAnimating()
        ai.hidesWhenStopped = true
        return ai
    }()
    
    var appId: Int! {
        didSet { // quando o app for setado ele busca no banco de dados depois cria uma funcao para buscar as informacoes no banco de dados
            self.buscaApp(appId: appId)
        }
    }
    var app: App?
    var loading: Bool = true
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never // para ficar pequeno
        
        collectionView.backgroundColor = .white
        collectionView.register(AppDetalheHeaderCell.self, forCellWithReuseIdentifier: headerId)
        collectionView.register(AppDetalheDescricaoCell.self, forCellWithReuseIdentifier: descricaoId)
        collectionView.register(AppDetalheScreenshotCell.self, forCellWithReuseIdentifier: screenshotId)
        collectionView.register(AppDetalheAvaliacaocell.self, forCellWithReuseIdentifier: avaliacaoid)
        
        view.addSubview(activityIndicadorView)
        activityIndicadorView.centralizasSuperview()
    }
    
    func buscaApp (appId: Int) {
        AppService.shared.buscaAppId(appId: appId) { (app, err) in
            if let app = app {
                DispatchQueue.main.async {
                    self.activityIndicadorView.stopAnimating()
                    self.loading = false
                    self.app = app
                    self.collectionView.reloadData()
                }
            }
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.loading ? 1 : 4
    }
    
    override func collectionView( _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: headerId, for: indexPath) as! AppDetalheHeaderCell
            cell.app = self.app
            return cell
        }
       
        if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: descricaoId, for: indexPath) as! AppDetalheDescricaoCell
            cell.app = self.app
            return cell
        }
        
        if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: screenshotId, for: indexPath) as! AppDetalheScreenshotCell
            cell.app = self.app
            return cell
        }
        
        if indexPath.item == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: avaliacaoid, for: indexPath) as! AppDetalheAvaliacaocell
            cell.app = self.app 
            return cell
        }
        
        return UICollectionViewCell()
        
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = view.bounds.width
        var height: CGFloat = 170
        
        if indexPath.item == 1 {
            let descricaocell = AppDetalheDescricaoCell(frame: CGRect(x: 0, y: 0, width: width, height: 1000)) //celula ficticia
            descricaocell.app = self.app
            descricaocell.layoutIfNeeded()
            
            let estimativaTamanhoCell = descricaocell.systemLayoutSizeFitting(CGSize(width: width, height: 1000))
            height = estimativaTamanhoCell.height // para ficar do tamanho do texto
        }
        
        if indexPath.item == 2 {
            height = 550
        }
        
        if indexPath.item == 3 {
            height = 280
        }
        
        return .init(width: width, height: height)
    }
}
