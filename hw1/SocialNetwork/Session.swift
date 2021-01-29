//
//  Session.swift
//  SocialNetwork
//
//  Created by Алёночка on 29.01.2021.
//

import Foundation

struct Session {
    
    static var shared = Session()
//    private init(){}
    
    var token: String = ""
    var userId: Int = 0
}
