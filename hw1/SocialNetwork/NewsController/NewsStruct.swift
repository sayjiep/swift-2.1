//
//  NewsArray.swift
//  SocialNetwork
//
//  Created by Алёночка on 23.12.2020.
//

import UIKit

struct  New {
    var groupImage : UIImage
    var name: String
    var time: String
    var newsPhoto: UIImage
    var likeImage: UIImage
    var likesCount: Int
    var commentsImage: UIImage
    var commentsCount: Int
    
    static func fetchNews() -> [New] {
        let new1 = New(groupImage: UIImage(named: "Cinema")!, name: "Cinema", time: "2 hours ago", newsPhoto: UIImage(named: "vikings")!, likeImage: UIImage(systemName: "heart")!, likesCount: Int.random(in: 1..<100), commentsImage: UIImage(systemName: "text.bubble")!, commentsCount: Int.random(in: 1..<40))
        let new2 = New(groupImage: UIImage(named: "TheWitcher")!, name: "The Witcher", time: "4 hours ago", newsPhoto: UIImage(named: "witcherNew")!, likeImage: UIImage(systemName: "heart")!, likesCount: Int.random(in: 1..<100), commentsImage: UIImage(systemName: "text.bubble")!, commentsCount: Int.random(in: 1..<40))
        
        
        return [new1, new2]
    }
}
