//
//  AppsGrupoCell.swift
//  store
//
//  Created by Mac Neia on 09/07/21.
//

import UIKit

class AppsGrupoCell: UICollectionViewCell {
    
    var grupo: AppGrupo? {
        didSet {
            if let grupo = grupo {
                tituloLabel.text = grupo.titulo
                appsGrupoHorizontalVC.apps = grupo.apps
            }
        }
    }
    
    
    let tituloLabel: UILabel = .textboldLabel(text: "app grupo titulo", fontSize: 24)
    
    let appsGrupoHorizontalVC = AppsGrupoHorizontalVc()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(tituloLabel)
        tituloLabel.preencher(
            top: topAnchor,
            leading: leadingAnchor,
            bottom: nil,
            trailing: trailingAnchor,
            padding: .init(top: 0, left: 20, bottom: 0, right: 20)
        )
        
        addSubview(appsGrupoHorizontalVC.view)
        appsGrupoHorizontalVC.view.preencher(
            top: tituloLabel.bottomAnchor,
            leading: leadingAnchor,
            bottom: bottomAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0)
        )
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}