//
//  AppDetalheAvaliacaocell.swift
//  store
//
//  Created by Mac Neia on 13/07/21.
//

import UIKit

class AppDetalheAvaliacaocell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    let tituloLabel: UILabel = .textboldLabel(text: "Avaliações e opiniões", fontSize: 24)
    
    var collectionView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let layout = SnappingLayout()
        layout.scrollDirection = .horizontal
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .red
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.decelerationRate = .fast
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        addSubview(tituloLabel)
        tituloLabel.preencher(
            top: topAnchor,
            leading: leadingAnchor,
            bottom: nil,
            trailing: trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 20)
            )
        
        addSubview(collectionView)
        collectionView.preencher(
            top: tituloLabel.bottomAnchor,
            leading: leadingAnchor,
            bottom: bottomAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0)
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func collectionView( _ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .yellow
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.bounds.width - 40, height: collectionView.bounds.height)
    }
}
