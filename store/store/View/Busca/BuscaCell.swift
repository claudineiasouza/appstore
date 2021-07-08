//
//  BuscaCell.swift
//  store
//
//  Created by Mac Neia on 07/07/21.
//

import UIKit

class BuscaCell: UITableViewCell {
    
    var app: App! {
        didSet {
            tituloLabel.text = app.nome
            empresaLabel.text = app.empresa
        }
    }
    
    let iconeImageView: UIImageView = .iconeImageView()
    let tituloLabel: UILabel = .textLabel(text: "App nome", fontSize: 18, numberOfLines: 2)
    let empresaLabel: UILabel = .textLabel(text: "Empresa nome", fontSize: 14)
    let obterButton: UIButton = .obterButton()
    
    let screenshot1ImageView: UIImageView = .sreenshotImageView()
    let screenshot2ImageView: UIImageView = .sreenshotImageView()
    let screenshot3ImageView: UIImageView = .sreenshotImageView()
        
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let tituloEmpresaStackView = UIStackView(arrangedSubviews: [tituloLabel,empresaLabel])
        tituloEmpresaStackView.spacing = 8
        tituloEmpresaStackView.axis = .vertical
        
        let headerstackView = UIStackView(arrangedSubviews: [iconeImageView, tituloEmpresaStackView, obterButton])
        headerstackView.spacing = 12
        headerstackView.alignment = .center
        
        let screenshotStackView = UIStackView(arrangedSubviews: [screenshot1ImageView, screenshot2ImageView, screenshot3ImageView])
        screenshotStackView.spacing = 12
        screenshotStackView.distribution = .fillEqually
        
        let globalStackView = UIStackView(arrangedSubviews: [headerstackView, screenshotStackView])
        globalStackView.spacing = 16
        globalStackView.axis = .vertical
        
        addSubview(globalStackView)
        globalStackView.preencherSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
