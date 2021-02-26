//
//  Database.swift
//  SocialNetwork
//
//  Created by Алёночка on 26.02.2021.
//

import Foundation
import RealmSwift

class DataBaseUser {
    private var db: Realm?
    
    init () {
        db = try? Realm()
        print(db?.configuration.fileURL)
    }
    
    func write(_ object: UserProfileRealm) {
        do {
            db?.beginWrite()
            db?.add(object, update: .all)
            try db?.commitWrite()
        } catch {
            print("something wrong")
        }
    }
    func read () -> [UserProfileRealm]? {
        if let objects = db?.objects(UserProfileRealm.self) {
            return Array(objects)
        
        }
        return nil
    }
}

