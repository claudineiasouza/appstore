//
//  HojeMultiploHeader.swift
//  store
//
//  Created by Mac Neia on 19/07/21.
//

import UIKit

class HojeMultiploHeader: UIView {
    
    var hojeApp: HojeApp? {
        didSet {
            if let hojeApp = hojeApp {
                categoriaLabel.text = hojeApp.categoria
                tituloLabel.text = hojeApp.titulo
            }
        }
    }
    
    let categoriaLabel: UILabel = .textLabel(text: "VIAGEM", fontSize: 18)
    let tituloLabel: UILabel = .textLabel(text: "Explore o mundo \nsem medo", fontSize: 28, numberOfLines: 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = UIStackView(arrangedSubviews: [categoriaLabel, tituloLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        addSubview(stackView)
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
