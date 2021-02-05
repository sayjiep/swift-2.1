//
//  NetworkManager.swift
//  SocialNetwork
//
//  Created by Алёночка on 05.02.2021.
//

import Foundation
import UIKit

class NetworkManager {
    
    private let urlString: String = "https://api.vk.com/method/users.get?user_id=2451450&v=5.89"
    
// перенести строку в вью контроллер
//    private let NetworkManager: NetworkManager = NetworkManager()
//    ниже сделать экшн и написать получение данных networkManager.getresult()
    
    func getResult() {
        if let url = URL(string: urlString) {
            let session = URLSession.shared
            let task = session.dataTask(with: url) { (data, response, error) in
            let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                print(json)
                }
            task.resume()

        
        }
    
    }
}
