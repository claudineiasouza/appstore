//
//  HojeDetalheUnicoCell.swift
//  store
//
//  Created by Mac Neia on 16/07/21.
//

import UIKit

class HojeDetalheUnicoCell: UITableViewCell {
    
    let descricaoLabel: UILabel = {
        let label = UILabel()
        
        let atributoTexto = NSMutableAttributedString(
            string: "Lorem Ipsum",
            attributes: [NSAttributedString.Key.foregroundColor : UIColor.black]
        )
        
        atributoTexto.append(NSAttributedString(
            string: "é simplismente uma simulacao dhfvdn  b vb cb  c vbndshsakdbvb cjdvcds dscdscv  dsdbsvhcd sdsbcdhsc ds dbcv s cdsc ds dvcds  hjcbdsf jodsfb lk.",
                                attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        )
        
        atributoTexto.append(NSAttributedString(
           string: "\n \nDe onde ele vem?",
           attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        )
        
        atributoTexto.append(NSAttributedString(
            string: "é simplismente uma simulacao dhfvdn  b vb cb  c vbndshsakdbvb cjdvcds dscdscv  dsdbsvhcd sdsbcdhsc ds dbcv s cdsc ds dvcds  hjcbdsf jodsfb lk.",
                                attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        )
        atributoTexto.append(NSAttributedString(
           string: "\n \nDe onde ele vem?",
           attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        )
        
        atributoTexto.append(NSAttributedString(
            string: "é simplismente uma simulacao dhfvdn  b vb cb  c vbndshsakdbvb cjdvcds dscdscv  dsdbsvhcd sdsbcdhsc ds dbcv s cdsc ds dvcds  hjcbdsf jodsfb lk.",
                                attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        )
        atributoTexto.append(NSAttributedString(
           string: "\n \nDe onde ele vem?",
           attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        )
        
        atributoTexto.append(NSAttributedString(
            string: "é simplismente uma simulacao dhfvdn  b vb cb  c vbndshsakdbvb cjdvcds dscdscv  dsdbsvhcd sdsbcdhsc ds dbcv s cdsc ds dvcds  hjcbdsf jodsfb lk.",
                                attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        )
        atributoTexto.append(NSAttributedString(
           string: "\n \nDe onde ele vem?",
           attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        )
        
        atributoTexto.append(NSAttributedString(
            string: "é simplismente uma simulacao dhfvdn  b vb cb  c vbndshsakdbvb cjdvcds dscdscv  dsdbsvhcd sdsbcdhsc ds dbcv s cdsc ds dvcds  hjcbdsf jodsfb lk.",
                                attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        )
        
        label.attributedText = atributoTexto
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(descricaoLabel)
        descricaoLabel.preencherSuperview(padding: .init(
        top: 24,
        left: 24,
        bottom: 24,
        right: 24
        ))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
