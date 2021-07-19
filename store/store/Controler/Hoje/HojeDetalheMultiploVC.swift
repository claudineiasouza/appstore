//
//  HojeDetalheMultiploVC.swift
//  store
//
//  Created by Mac Neia on 19/07/21.
//

import UIKit

class HojeDetalheMultiploVC: UITableViewController {
    
    var hojeApp: HojeApp?
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 90, bottom: 0, right: 24)
        tableView.register(HojeMultiploAppCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.hojeApp?.apps?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! HojeMultiploAppCell
        
        cell.app = self.hojeApp?.apps?[indexPath.item]
        cell.leadingConstraint?.constant = 24
        cell.trailingConstraint?.constant = -24
        
        return cell
    }
}
