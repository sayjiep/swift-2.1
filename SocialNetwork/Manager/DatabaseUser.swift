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
    var token: NotificationToken?
    
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
            
            self.token = objects.observe( { (changes: RealmCollectionChange) in
                switch changes {
                case .initial(let results):
                    print(results)
                case let .update(results, deletions, insertions, modifications) :
                    print(results, deletions, insertions, modifications)
                case .error(let error) :
                    print(error)
                }
            })
            
            
            return Array(objects)
        
        }
        return nil
    }
}

