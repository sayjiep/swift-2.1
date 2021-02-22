//
//  Session.swift
//  SocialNetwork
//
//  Created by Алёночка on 29.01.2021.
//

import Foundation

struct Session {
    
    static var shared = Session()
    
    var token: String = ""
    var userId: Int = 0
    
    private init(){}
    
    
    
    mutating func setUserData(userIdStr userId:Int, tokenStr token: String) {
        self.userId = userId
        self.token = token
    }
}
