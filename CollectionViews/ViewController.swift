//
//  ViewController.swift
//  CollectionViews
//
//  Created by Juan Diego Marin on 5/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOulets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Private propierties
    private let myCountries = ["España", "Colombia", "Argentina", "Italia", "Rusia", "Panama", "Canadá"]
    private let adapter = CountriesViewsAdapter()

    

    
    //MARK: - life cicle view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = adapter
        collectionView.delegate = adapter
        
        adapter.favoriteCountries = myCountries
        
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }

}

