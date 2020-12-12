//
//  GroupTableCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class GroupTableCell: UITableViewCell {

    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var logoLabel: UIImageView!
    
    func setData(group: String, image: UIImage) {
           groupLabel.text = group
           logoLabel.image = image
       }

}
