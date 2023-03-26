//
//  CollectionViewCell.swift
//  Marathon9.1
//
//  Created by юра on 25.03.23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "CollectionViewCell"
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "walp")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(mainImage)
        mainImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
