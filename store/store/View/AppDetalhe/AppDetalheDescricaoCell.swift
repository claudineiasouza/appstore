//
//  AppDetalheDescricaoCell.swift
//  store
//
//  Created by Mac Neia on 13/07/21.
//

import UIKit

class AppDetalheDescricaoCell: UICollectionViewCell {
    
    let tituloLabel: UILabel = .textboldLabel(text: "Novidades", fontSize: 24)
    let descricaoLabel: UILabel = .textLabel(text: "Descrição  kjhnfdfdhgjslkfhbvhfbsjfbc      jkmfhefbewkfnefjenf jkncebfe bjhbewjcf ewvehewnv jewhjhskjebv hjbew lkshdbv bk bnmbkvn vb wmbv  dhj bdndh        hs h eger u bgrerejj", fontSize: 12, numberOfLines: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = UIStackView(arrangedSubviews: [tituloLabel, descricaoLabel])
        stackView.spacing = 12
        stackView.axis = .vertical
        
      addSubview(stackView)
        stackView.preencherSuperview(padding: .init(top: 0, left: 20, bottom: 0, right: 20))
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
