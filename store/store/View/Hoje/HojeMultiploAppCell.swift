//
//  HojeMultiploAppCell.swift
//  store
//
//  Created by Mac Neia on 19/07/21.
//

import UIKit

class HojeMultiploAppCell: UITableViewCell {
    
    var app: App? {
        didSet {
            if let app = app {
                iconeImageView.sd_setImage(with: URL(string: app.iconeUrl), completed: nil)
                tituloLabel.text = app.nome
                empresaLabel.text = app.empresa
            }
        }
    }
    
    let iconeImageView: UIImageView = .iconeImageView(width: 48, heigth: 48)
    let tituloLabel: UILabel = .textLabel(text: "App nome", fontSize: 16)
    let empresaLabel: UILabel = .textLabel(text: "App empresa", fontSize: 14)
    let obterButton: UIButton = .obterButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        let tituloEmpresaStackView = UIStackView(arrangedSubviews: [tituloLabel, empresaLabel])
        tituloEmpresaStackView.spacing = 4
        tituloEmpresaStackView.axis = .vertical
        
        
        let stackView = UIStackView(arrangedSubviews: [iconeImageView, tituloEmpresaStackView, obterButton])
        stackView.spacing = 16
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.preencherSuperview(padding: .init(top: 14, left: 0, bottom: 14, right: 0))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
