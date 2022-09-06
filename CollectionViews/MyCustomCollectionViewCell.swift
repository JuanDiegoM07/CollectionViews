//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Juan Diego Marin on 5/09/22.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOulets
    @IBOutlet weak var myFirstLaber: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    //MARK: - Life cycle view controller
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .lightGray
        
        myFirstLaber.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLaber.textColor = .blue
 
    }

}
