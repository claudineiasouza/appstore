//
//  HojeVC.swift
//  store
//
//  Created by Mac Neia on 14/07/21.
//

import UIKit

class HojeVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let multiploId = "multiploId"
    
    var hojeApps: [HojeApp] = []
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            navigationController?.navigationBar.isHidden = true // esconder a navegacao
            
            
            collectionView.backgroundColor = .systemGroupedBackground
            collectionView.register(HojeCell.self, forCellWithReuseIdentifier: cellId)
            collectionView.register(HojeMultiploCell.self, forCellWithReuseIdentifier: multiploId)
            
            self.buscaHojeDestaque()
            
        }
    
    func buscaHojeDestaque () {
        HojeService.shared.buscaHojeDestaque { (apps, err) in
            if let apps = apps {
                DispatchQueue.main.async {
                    self.hojeApps = apps
                    self.collectionView.reloadData()
                }
            }
        }
        
    }
 }
extension HojeVC {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.hojeApps.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if indexPath.item < 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HojeCell
            cell.hojeApp = self.hojeApps[indexPath.item]
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: multiploId, for: indexPath) as! HojeMultiploCell
            return cell
        }

     }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.bounds.width - 48, height: view.bounds.width + 48)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath){
            if let frame = cell.superview?.convert(cell.frame, to: nil) {
                
                tabBarController?.tabBar.isHidden = true //remover a tabbar
                
        let modalView = HojeDetalheVc()
                modalView.modalPresentationStyle = .overCurrentContext
                
                modalView.handlerFechar = {
                    self.tabBarController?.tabBar.isHidden = false
                }
                
                self.present(modalView, animated: false) {
                    modalView.frame = frame
                    modalView.hojeApp = self.hojeApps[indexPath.item]
                }
                
            }
        }
    }
}

