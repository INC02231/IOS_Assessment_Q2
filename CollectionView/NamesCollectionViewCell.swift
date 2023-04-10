//
//  FruitsCollectionViewCell.swift
//  CollectionView
//
//  Created by Incture on 10/04/23.
//

import UIKit

class NamesCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = "NamesCollectionViewCell"
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var uview: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.uview.layer.cornerRadius = 20.0
        self.uview.layer.borderColor = UIColor.black.cgColor
        self.uview.layer.borderWidth = 0.5
        self.uview.layer.shadowColor = UIColor.black.cgColor
//        self.uview.layer.shadowOpacity = 0.3
    }

}
