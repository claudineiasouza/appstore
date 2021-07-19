//
//  HojeCell.swift
//  store
//
//  Created by Mac Neia on 15/07/21.
//

import UIKit

class HojeCell: UICollectionViewCell {
    
    var hojeApp: HojeApp? {
        didSet {
            if let hojeApp = hojeApp {
            
                categoriaLabel.text = hojeApp.categoria
                tituloLabel.text = hojeApp.titulo
                descricaoLabel.text = hojeApp.descricao
                
                if let imagem = hojeApp.imagemUrl {
                    imagemView.image = UIImage(named: imagem)
                }
                if let background = hojeApp.backgroudColor {
//                    self.backgroundColor = UIColor.white
                    self.backgroundColor = UIColor(hexString: background)
                }
        }
      }
    }
    let categoriaLabel: UILabel = .textLabel(text: "VIAGEM", fontSize: 18)
    let tituloLabel: UILabel = .textboldLabel(text: "Explore o mundo \nsem medo", fontSize: 28, numberOfLines: 2)
    let imagemView: UIImageView = .hojeImageView(named: "destaque-1")
    let descricaoLabel: UILabel = .textLabel(text: "Podemos viajar o mundo hfgjafi vm,ncgslkfjgcdnsccbdvcn hjcg  bdweec sb n s s hsdgcd scb", fontSize: 14, numberOfLines: 3)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        clipsToBounds = true
        
        let boxView = UIView()
        boxView.clipsToBounds = true
        boxView.addSubview(imagemView)
        
        imagemView.centerXAnchor.constraint(equalTo: boxView.centerXAnchor).isActive = true
        imagemView.centerYAnchor.constraint(equalTo: boxView.centerYAnchor).isActive = true
        imagemView.size(size: .init(width: bounds.width, height: 250))
        
        let stackView = UIStackView(arrangedSubviews: [categoriaLabel, tituloLabel, boxView, descricaoLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        addSubview(stackView)
       // stackView.preencherSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
        stackView.preencher(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: leadingAnchor,
            bottom: bottomAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 24, left: 24, bottom: 24, right: 24)
        )
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
