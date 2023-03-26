//
//  ViewController.swift
//  Marathon9.1
//
//  Created by юра on 25.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    private var collectionView = CollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(collectionView)
        let label = UILabel()
        label.text = "Caring collection"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 35)
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.frame = CGRect(x: 16, y: 80, width: 300, height: 40)
        view.addSubview(label)
        collectionView.backgroundColor = #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)
        collectionView.contentInset = UIEdgeInsets(top: 120, left: collectionView.layoutMargins.left * 2, bottom: 0, right: 20)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

