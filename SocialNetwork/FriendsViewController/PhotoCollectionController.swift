//
//  PhotoCollectionController.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit


class PhotoCollectionController: UICollectionViewController {
    

var photoCollectionView: UICollectionView!

var photoData: [UIImage] = [(UIImage(named: "Max1")!), (UIImage(named: "Max2")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCollectionCell
        
        let index = indexPath.row
        let image = photoData[index]
        cell .setData(image: image)
        return cell
    }
}
