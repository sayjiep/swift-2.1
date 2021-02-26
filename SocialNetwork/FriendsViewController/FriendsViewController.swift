//
//  FriendsViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit
//
//class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//   
//    
//    @IBOutlet weak var tableViewFriend: UITableView!
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//
//        
//        tableViewFriend.delegate = self
//        tableViewFriend.dataSource = self
//        
//        UIView.animate(withDuration: 2.0) {
//            self.tableViewFriend.transform = CGAffineTransform(rotationAngle: .pi)
//        }
//        UIView.animate(withDuration: 2) {
//            self.tableViewFriend.transform = .identity
//        }
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return user.count
//    }
//    
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as! FriendsTableCell
//        
//        let currentFriend = user[indexPath.row]
//        cell.nameLabel.text = currentFriend.name
//        cell.cityLabel.text = currentFriend.city
//        cell.imageLabel.image = currentFriend.image
//        
//        
//        return cell
//    }
//    
//}
