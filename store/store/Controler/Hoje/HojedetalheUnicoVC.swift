//
//  HojedetalheUnicoVC.swift
//  store
//
//  Created by Mac Neia on 15/07/21.
//

import UIKit

class HojedetalheUnicoVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .white
        
        self.adicionarHeader()
    }
    
    func adicionarHeader () {
        let headerView = UIView(frame: .init(x: 0, y: 0, width: view.bounds.width, height: view.bounds.width + 400))
        
        let hojeCell = HojeCell()
        hojeCell.layer.cornerRadius = 0
        
        headerView.addSubview(hojeCell)
        hojeCell.preencherSuperview()
        
        self.tableView.tableHeaderView = headerView
    }
}
