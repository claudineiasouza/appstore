//
//  HojeCell.swift
//  store
//
//  Created by Mac Neia on 15/07/21.
//

import UIKit

class HojeCell: UICollectionViewCell {
    
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
        stackView.preencherSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
