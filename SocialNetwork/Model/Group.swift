//
//  Group.swift
//  SocialNetwork
//
//  Created by Алёночка on 07.01.2021.
//

import UIKit
import RealmSwift

struct Group: Codable {
    var groupLabel: String
    var logoLabel: String
    
    
    func toGroupRealm() -> GroupRealm {
        return GroupRealm(groupLabel: groupLabel,
                          logoLabel: logoLabel)
    }
//
//    static func fetchGroup() -> [Group] {
//        let theWitcher = Group(groupLabel: "The Witcher", logoLabel: UIImage(named: "TheWitcher")!)
//        let anime = Group(groupLabel: "Anime", logoLabel: UIImage(named: "Anime")!)
//        let cinema = Group(groupLabel: "Cinema", logoLabel: UIImage(named: "Cinema")!)
//
//        return [theWitcher, anime, cinema]
//    }
}



class GroupRealm: Object {
    @objc dynamic var groupLabel: String = ""
    @objc dynamic var logoLabel: String = ""
    
    override init() {}
    
    convenience required init(groupLabel: String, logoLabel: String) {
        self.init()
        self.groupLabel = groupLabel
        self.logoLabel = logoLabel
    }
    
    override class func primaryKey() -> String? {
        return "groupLabel"
    }
    
    func toGroup() -> Group {
        return Group(groupLabel: groupLabel,
                     logoLabel: logoLabel)
    }
    
}
