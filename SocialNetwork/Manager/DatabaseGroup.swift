//
//  DatabaseGroup.swift
//  SocialNetwork
//
//  Created by Алёночка on 26.02.2021.
//

import Foundation
import RealmSwift

class DataBaseGroup {
    private var db: Realm?
    
    init () {
        db = try? Realm()
        print(db?.configuration.fileURL)
    }
    
    func write(_ object: GroupRealm) {
        do {
            db?.beginWrite()
            db?.add(object, update: .all)
            try db?.commitWrite()
        } catch {
            print("something wrong")
        }
    }
    func read () -> [GroupRealm]? {
        if let objects = db?.objects(GroupRealm.self) {
            return Array(objects)
        
        }
        return nil
    }
}
