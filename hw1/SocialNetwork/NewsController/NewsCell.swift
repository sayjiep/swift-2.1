//
//  NewsCell.swift
//  SocialNetwork
//
//  Created by Алёночка on 23.12.2020.
//

import UIKit

class NewsCell: UITableViewCell {
  
    @IBOutlet weak var commentsCountLabel: UILabel!
    @IBOutlet weak var commentsImageLabel: UIImageView!
    @IBOutlet weak var likesCountLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var newsPhotoImageLabel: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var likesImageLabel: UIImageView!
    @IBOutlet weak var groupImageLabel: UIImageView! {
        didSet {
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(animGroupLabel(_:))); groupImageLabel.addGestureRecognizer(recognizer)
        }
    }
    
    
    func setData(groupImage: UIImage, name: String, time: String, newsPhoto: UIImage, likeImage: UIImage, likesCount: String, commentsImage: UIImage, commentsCount: String) {
        groupImageLabel.image = groupImage
        groupLabel.text = name
        timeLabel.text = time
        newsPhotoImageLabel.image = newsPhoto
        likesImageLabel.image = likeImage
        likesCountLabel.text = likesCount
        commentsImageLabel.image = commentsImage
        commentsCountLabel.text = commentsCount
    }
    
    @objc func animGroupLabel(_ sender: UITapGestureRecognizer) {
        
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0.75
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 2
        animation.duration = 2
        animation.fillMode = CAMediaTimingFillMode.backwards
        
        self.groupImageLabel.layer.add(animation, forKey: "transform.scale")
    
    }
}
