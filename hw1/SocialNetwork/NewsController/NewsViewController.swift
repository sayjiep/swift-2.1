//
//  NewsViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 23.12.2020.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var NewsTableView: UITableView!
    
    var new = New.fetchNews()


    override func viewDidLoad() {
        super.viewDidLoad()

        NewsTableView.delegate = self
        NewsTableView.dataSource = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return new.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = NewsTableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsCell

        let currentNew = new[indexPath.row]
        cell.groupLabel.text = currentNew.name
        cell.groupImageLabel.image = currentNew.groupImage
        cell.commentsCountLabel.numberOfLines =  currentNew.commentsCount
        cell.commentsImageLabel.image = currentNew.commentsImage
        cell.likeImageLabel.image = currentNew.likeImage
        cell.likesCountLabel.numberOfLines = currentNew.likesCount
        cell.newsPhotoImageLabel.image = currentNew.newsPhoto
        cell.timeLabel.text = currentNew.time
    
        return cell
    }
}
    


