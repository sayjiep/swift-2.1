//
//  NewsViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 23.12.2020.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var NewsTableView: UITableView!
    
    var new: [New] = [
        New(groupImage: UIImage(named: "Cinema")!, name: "Cinema", time: "2 hours ago", newsPhoto: UIImage(named: "vikings")!, likeImage: UIImage(systemName: "heart")!, likesCount: Int.random(in: 1..<30), commentsImage: UIImage(systemName: "text.bubble")!, commentsCount: Int.random(in: 1..<100))
    
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NewsTableView.delegate = self
        NewsTableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = NewsTableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsCell
        let index = indexPath.row
        
        let groupImage = New[index].0
        let name = New[index].1
        let time = New[index].2
        let newsPhoto = New[index].3
        let likeImage = New[index].4
        let likesCount = New[index].5
        let commentsImage = New[index].6
        let commentsCount = New[index].7
        
        
        cell .setData(groupImage: groupImage, name: name, time: time, newsPhoto: newsPhoto, likeImage: likeImage, likesCount: likesCount, commentsImage: commentsImage, commentsCount: commentsCount)
    }

  

}
