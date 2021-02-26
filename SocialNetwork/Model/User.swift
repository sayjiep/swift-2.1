//
//  User.swift
//  SocialNetwork
//
//  Created by Алёночка on 07.01.2021.
//

import UIKit
import RealmSwift

struct UserProfile: Codable {
    var name: String
    var city: String
    var image: String
//    override public init() {
//    }
    
    func toUserProfileRealm() -> UserProfileRealm {
        return UserProfileRealm(name: name,
                                city: city,
                                image: image)
    }
    
//    static func fetchUser() -> [UserProfile] {
//        let maxPayne = UserProfile(name: "Max Payne", city: "Moscow", image: UIImage(named: "Max")!)
//        let dukeNukem = UserProfile(name: "Duke Nukem", city: "Los Angeles", image: UIImage(named: "Duke")!)
//        let geralt = UserProfile(name: "Geralt", city: "Rivia", image: UIImage(named: "Geralt")!)
//
//        return [maxPayne, dukeNukem, geralt]
//    }
}


class UserProfileRealm: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var city: String = ""
    @objc dynamic var image: String = ""
    
    override init() {}
    
    convenience required init(name: String, city: String, image: String) {
        self.init()
        self.name = name
        self.city = city
        self.image = image
    }
    
    override class func primaryKey() -> String? {
        return "name"
    }
    
    func toUserProfile() -> UserProfile {
        return UserProfile(name: name,
                           city: city,
                           image: image)
    }
}
