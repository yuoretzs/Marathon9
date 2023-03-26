//
//  CollectionView.swift
//  Marathon9.1
//
//  Created by юра on 25.03.23.
//

import UIKit

class CollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    let cellWidth: CGFloat = UIScreen.main.bounds.width - 100
    
    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: cellWidth, height: 450)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 10
        translatesAutoresizingMaskIntoConstraints = false
        showsHorizontalScrollIndicator = false
        delegate = self
        dataSource = self
        register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.reuseId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseId, for: indexPath) as! CollectionViewCell
        return cell
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthWithSpacing = layout.itemSize.width + layout.minimumLineSpacing
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthWithSpacing
        let roundedIndex = round(index)
        offset = CGPoint(x: roundedIndex * cellWidthWithSpacing - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
}

