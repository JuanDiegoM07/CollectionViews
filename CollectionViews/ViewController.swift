//
//  ViewController.swift
//  CollectionViews
//
//  Created by Juan Diego Marin on 5/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let myCountries = ["España", "Colombia", "Argentina", "Italia", "Rusia", "Panama", "Canadá"]
    
    private let myCellWith = UIScreen.main.bounds.width / 2

    //MARK: - IBOulets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - life cycle view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }

}

//MARK: - UICollectionViewDataSource
extension ViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        cell!.myFirstLaber.text = myCountries[indexPath.row ]
        return cell!
    }
     
}

//MARK: - UICollectionViewDelegate
extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row), \(myCountries[indexPath.row])")
    }
}

//MARK: - UICollectionViewDelegate
extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCellWith, height: myCellWith )
    }
}
