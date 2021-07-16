//
//  HojedetalheUnicoVC.swift
//  store
//
//  Created by Mac Neia on 15/07/21.
//

import UIKit

class HojedetalheUnicoVC: UITableViewController {
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.register(HojeDetalheUnicoCell.self, forCellReuseIdentifier: cellId)
        
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

extension HojedetalheUnicoVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! HojeDetalheUnicoCell
        return cell 
    }
}
