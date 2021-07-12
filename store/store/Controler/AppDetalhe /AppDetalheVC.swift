//
//  AppDetalheVC.swift
//  store
//
//  Created by Mac Neia on 12/07/21.
//

import UIKit

class AppDetalheVC: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
    }
}
