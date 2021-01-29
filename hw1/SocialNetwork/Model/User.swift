//
//  User.swift
//  SocialNetwork
//
//  Created by Алёночка on 07.01.2021.
//

import UIKit

struct UserProfile {
    var name: String
    var city: String
    var image: UIImage
    
    static func fetchUser() -> [UserProfile] {
        let maxPayne = UserProfile(name: "Max Payne", city: "Moscow", image: UIImage(named: "Max")!)
        let dukeNukem = UserProfile(name: "Duke Nukem", city: "Los Angeles", image: UIImage(named: "Duke")!)
        let geralt = UserProfile(name: "Geralt", city: "Rivia", image: UIImage(named: "Geralt")!)
        
        return [maxPayne, dukeNukem, geralt]
    }
}

