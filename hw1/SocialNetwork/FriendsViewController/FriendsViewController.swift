//
//  FriendsViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    
    @IBOutlet weak var tableViewFriend: UITableView!
    
    
    var friendsData: [(String, String, UIImage)] = [("Max Payne", "Moscow", UIImage(named: "Max")!), ("Duke Nukem", "Los Angeles", UIImage(named: "Duke")!), ("Geralt", "Rivia", UIImage(named: "Geralt")!)]
    
   
//    var searchController: UISearchController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        searchController = UISearchController(searchResultsController: nil)
        
        tableViewFriend.delegate = self
        tableViewFriend.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as! FriendsTableCell
        
        let index = indexPath.row
        
        let name = friendsData[index].0
        let city = friendsData[index].1
        let image = friendsData[index].2
        cell .setData(name: name, city: city, image: image)
        
        return cell
    }
    
    struct Person {
        var name: String
        var avatar: UIImage
    }
}
