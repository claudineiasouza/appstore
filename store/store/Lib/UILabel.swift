//
//  UILabel.swift
//  store
//
//  Created by Mac Neia on 07/07/21.
//

import UIKit

extension UILabel {
    
    static func textLabel (text: String, fontSize: CGFloat, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.numberOfLines = numberOfLines
        label.text = text 
        
        return label
        
    }
}
