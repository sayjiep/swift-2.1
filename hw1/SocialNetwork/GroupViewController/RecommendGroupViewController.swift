//
//  ReccomendGroupViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 12.12.2020.
//

import UIKit

class RecommendGroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var recTableView: UITableView!
    
    var recGroupData: [(String, UIImage)] = [("Books", UIImage(named: "Book")!),("Fun", UIImage(named: "Fun")!), ("Games", UIImage(named: "Game")!)]

        override func viewDidLoad() {
            super.viewDidLoad()
            recTableView.delegate = self
            recTableView.dataSource = self
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = recTableView.dequeueReusableCell(withIdentifier: "RecommendCell") as! RecommendTableCell
            
            let index = indexPath.row
            
            let group = recGroupData[index].0
            let image = recGroupData[index].1
            cell .setData(group: group, image: image)
            
            return cell
        }
    }
    
   


    
    
    

    



