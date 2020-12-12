//
//  GroupViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class GroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableViewGroup: UITableView!

    var groupData: [(String, UIImage)] = [("The Witcher", UIImage(named: "TheWitcher")!),
        ("Anime", UIImage(named: "Anime")!), ("Cinema", UIImage(named: "Cinema")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewGroup.delegate = self
        tableViewGroup.dataSource = self
    }
    
    
//    @IBAction func addGroup(segue: UIStoryboardSegue) {
//
//        }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewGroup.dequeueReusableCell(withIdentifier: "GroupCell") as! GroupTableCell
        
        let index = indexPath.row
        
        let group = groupData[index].0
        let image = groupData[index].1
        cell .setData(group: group, image: image)
        
        return cell
    }
    
}

  
        
    

