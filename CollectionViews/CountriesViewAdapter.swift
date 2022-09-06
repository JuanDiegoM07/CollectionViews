//
//  CountriesViewAdapter.swift
//  CollectionViews
//
//  Created by Jorge Luis Rivera Ladino on 6/09/22.
//

import UIKit

class CountriesViewsAdapter : NSObject {
    
    var favoriteCountries : [String] = []
    
    let myCellWith = UIScreen.main.bounds.width / 2
    
    //MARK: - UICollectionViewDataSource
   

    
}

extension CountriesViewsAdapter : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        favoriteCountries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        cell!.myFirstLaber.text = favoriteCountries[indexPath.row ]
        return cell!
    }
     
}

//MARK: - UICollectionViewDelegate
extension CountriesViewsAdapter : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row), \(favoriteCountries[indexPath.row])")
    }
}

//MARK: - UICollectionViewDelegate
extension CountriesViewsAdapter : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCellWith, height: myCellWith )
    }
}
