//
//  NewsCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 23.12.2020.
//

import UIKit

class NewsCell: UITableViewCell {
    
    @IBOutlet weak var groupImageLabel: UIImageView!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var newsPhotoImageLabel: UIImageView!
    @IBOutlet weak var likeImageLabel: UIImageView!
    @IBOutlet weak var likesCountLabel: UILabel!
    @IBOutlet weak var commentsImageLabel: UIImageView!
    @IBOutlet weak var commentsCountLabel: UILabel!
    
    
    func setData(groupImage: UIImage, name: String, time: String, newsPhoto: UIImage, likeImage: UIImage, likesCount: String, commentsImage: UIImage, commentsCount: String) {
        groupImageLabel.image = groupImage
        groupLabel.text = name
        timeLabel.text = time
        newsPhotoImageLabel.image = newsPhoto
        likeImageLabel.image = likeImage
        likesCountLabel.text = likesCount
        commentsImageLabel.image = commentsImage
        commentsCountLabel.text = commentsCount
    }

}
