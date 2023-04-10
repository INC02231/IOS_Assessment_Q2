//
//  ViewController.swift
//  CollectionView
//
//  Created by Incture on 10/04/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    let fruits = ["Anup", "Laxmikanta", "Rabi", "Debjeet", "Susmita", "Subhasis", "Sourav", "Abhijeet", "Apurba", "Lipika", "Sathi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        register()
    }
    func register(){
        let nib = UINib(nibName: "NamesCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "NamesCollectionViewCell")
                
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruits.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NamesCollectionViewCell", for: indexPath) as! NamesCollectionViewCell
        cell.name.text = fruits[indexPath.row]
        return cell
    }

}

