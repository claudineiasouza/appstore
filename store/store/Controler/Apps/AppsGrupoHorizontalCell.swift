//
//  AppsGrupoHorizontalCell.swift
//  store
//
//  Created by Mac Neia on 09/07/21.
//

import UIKit

class AppsGrupoHorizontalCell: UICollectionViewCell {
    
    let iconoeImageView: UIImageView = .iconeImageView()
    let tituloLabel: UILabel = .textLabel(text: "App nome", fontSize: 18, numberOfLines: 2)
    let empresaLabel: UILabel = .textLabel(text: "App empresa", fontSize: 14)
    let obterButton: UIButton = .obterButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 80, y: bounds.height, width: bounds.width - 80, height: 0.8)
        bottomLine.backgroundColor = UIColor.cinza.cgColor
        layer.addSublayer(bottomLine)
        
        let tituloEmpresaStackView = UIStackView(arrangedSubviews: [tituloLabel, empresaLabel])
        tituloEmpresaStackView.spacing = 4
        tituloEmpresaStackView.axis = .vertical
        
        let stackView = UIStackView(arrangedSubviews: [iconoeImageView, tituloEmpresaStackView, obterButton])
        stackView.spacing = 12
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.preencherSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
