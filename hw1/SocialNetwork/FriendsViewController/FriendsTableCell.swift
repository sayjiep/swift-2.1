//
//  FriendsTableCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class FriendsTableCell: UITableViewCell {

 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    func setData(name: String, city: String, image: UIImage) {
        nameLabel.text = name
        cityLabel.text = city
        imageLabel.image = image
    }
}
