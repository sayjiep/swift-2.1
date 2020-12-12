//
//  PhotoCollectionCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class PhotoCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var photoLabel: UIImageView!
    
    func setData(image: UIImage) {
            photoLabel.image = image
        }
    
}
