//
//  AppDetalheVC.swift
//  store
//
//  Created by Mac Neia on 12/07/21.
//

import UIKit

class AppDetalheVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let headerId = "headerId"
    let descricaoId = "descricaoId"
    let screenshotId = "screenshotId"
    let avaliacaoid = "avaliacaoid"
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never // para ficar pequeno
        
        collectionView.backgroundColor = .white
        collectionView.register(AppDetalheHeaderCell.self, forCellWithReuseIdentifier: headerId)
        collectionView.register(AppDetalheDescricaoCell.self, forCellWithReuseIdentifier: descricaoId)
        collectionView.register(AppDetalheScreenshotCell.self, forCellWithReuseIdentifier: screenshotId)
        collectionView.register(AppDetalheAvaliacaocell.self, forCellWithReuseIdentifier: avaliacaoid)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView( _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: headerId, for: indexPath) as! AppDetalheHeaderCell
            return cell
        }
       
        if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: descricaoId, for: indexPath) as! AppDetalheDescricaoCell
            return cell
        }
        
        if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: screenshotId, for: indexPath) as! AppDetalheScreenshotCell
            return cell
        }
        
        if indexPath.item == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: avaliacaoid, for: indexPath) as! AppDetalheAvaliacaocell
            return cell
        }
        
        return UICollectionViewCell()
        
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = view.bounds.width
        var height: CGFloat = 170
        
        if indexPath.item == 1 {
            let descricaocell = AppDetalheDescricaoCell(frame: CGRect(x: 0, y: 0, width: width, height: 1000)) //celula ficticia
            descricaocell.layoutIfNeeded()
            
            let estimativaTamanhoCell = descricaocell.systemLayoutSizeFitting(CGSize(width: width, height: 1000))
            height = estimativaTamanhoCell.height // para ficar do tamanho do texto
        }
        
        if indexPath.item == 2 {
            height = 550
        }
        
        if indexPath.item == 3 {
            height = 280
        }
        
        return .init(width: width, height: height)
    }
}
