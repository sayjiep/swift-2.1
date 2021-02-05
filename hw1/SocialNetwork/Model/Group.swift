//
//  Group.swift
//  SocialNetwork
//
//  Created by Алёночка on 07.01.2021.
//

import UIKit

struct Group {
    var groupLabel: String
    var logoLabel: UIImage
    
    static func fetchGroup() -> [Group] {
        let theWitcher = Group(groupLabel: "The Witcher", logoLabel: UIImage(named: "TheWitcher")!)
        let anime = Group(groupLabel: "Anime", logoLabel: UIImage(named: "Anime")!)
        let cinema = Group(groupLabel: "Cinema", logoLabel: UIImage(named: "Cinema")!)
        
        return [theWitcher, anime, cinema]
    }
}
