//
//  HojeMultiploCell.swift
//  store
//
//  Created by Mac Neia on 19/07/21.
//

import UIKit

class HojeMultiploCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource {
    
    var hojeApp: HojeApp? {
        didSet {
            if let hojeApp = hojeApp {
                categoriaLabel.text = hojeApp.categoria
                tituloLabel.text = hojeApp.titulo
                tableView.reloadData()
            }
        }
    }
    
    let cellId = "cellId"
    
    let categoriaLabel: UILabel = .textLabel(text: "VIAGEM", fontSize: 18)
    let tituloLabel: UILabel = .textLabel(text: "Explore o mundo \nsem medo", fontSize: 28, numberOfLines: 2)
    
    var tableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        clipsToBounds = true
        
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(HojeMultiploAppCell.self, forCellReuseIdentifier: cellId)
        
        let stackView = UIStackView(arrangedSubviews: [categoriaLabel, tituloLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        addSubview(stackView)
        stackView.preencher(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: leadingAnchor,
            bottom: nil,
            trailing: trailingAnchor,
            padding: .init(top: 24, left: 24, bottom: 24, right: 24)
        )
        
        addSubview(tableView)
        tableView.preencher(
            top: stackView.bottomAnchor,
            leading: leadingAnchor,
            bottom: bottomAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 24, left: 24, bottom: 24, right: 24)
            )
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.hojeApp?.apps?.count ?? 0 
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! HojeMultiploAppCell
        return cell
    }
    
}
