//
//  PhotoCollectionCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class PhotoCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var photoLabel: UIImageView!
    @IBOutlet weak var btnLike: UIButton!
    
    func setData(image: UIImage) {
            photoLabel.image = image
        }
    
    
    @IBAction func btnLikeAction(_ sender: UIButton) {
        if btnLike.tag == 0 {
            btnLike.setImage(UIImage(named: "heart5"), for: .normal)
            btnLike.tag = 1
        } else {
            btnLike.setImage(UIImage(named: "heart6"), for: .normal)
            btnLike.tag = 0
        }
    }
    
}
