//
//  HojedetalheCv.swift
//  store
//
//  Created by Mac Neia on 15/07/21.
//

import UIKit

class HojedetalheCv: UIViewController {
    
    var centerView: UIView?
    var frame: CGRect?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        centerView = UIView()
    }
    
    func animacao () {
        
        guard let centerView = self.centerView else {return}
        guard let frame = self.frame else {return}
        
        centerView.backgroundColor = .blue
        centerView.frame = frame
        
        view.addSubview(centerView)
        
    }
    
}
