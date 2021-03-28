//
//  RecommendTableCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class RecommendTableCell: UITableViewCell {
    
    @IBOutlet weak var recNameLabel: UILabel!
    @IBOutlet weak var recLogoLabel: UIImageView!
    

    func setData(group: String, image: UIImage) {
           recNameLabel.text = group
           recLogoLabel.image = image
       }
   }
    
