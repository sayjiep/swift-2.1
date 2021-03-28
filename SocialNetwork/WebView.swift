//
//  WebView.swift
//  SocialNetwork
//
//  Created by Алёночка on 01.02.2021.
//

import UIKit
import WebKit


class WebView: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var photoWK: UIButton!
    @IBOutlet weak var friendsWK: UIButton!
    @IBOutlet weak var groupsWK: UIButton!
    @IBOutlet weak var textFieldWK: UITextField!
    @IBOutlet weak var searchWK: UIButton!
    
    private var user: [UserProfile] = []
    private var group: [Group] = []
    let networkManager: NetworkManager = NetworkManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        webView.load(networkManager.getStartRequest())
        friendsWK.addTarget(self, action: #selector(getFriends), for: .touchUpInside)
        groupsWK.addTarget(self, action: #selector(getGroups), for: .touchUpInside)
        photoWK.addTarget(self, action: #selector(getPhotos), for: .touchUpInside)
        searchWK.addTarget(self, action: #selector(getGroupsWithSearch), for: .touchUpInside)
       
    
    }
    
    private func addToDatabaseUser() {
        let db = DataBaseUser()
        user.forEach({ db.write($0.toUserProfileRealm()) })
    }
    
    private func addtiDatabaseGroup() {
        let dbGroup = DataBaseGroup()
        group.forEach({ dbGroup.write($0.toGroupRealm()) })
    }
    
    
    @objc func getFriends() {
        networkManager.getResFriends(stringURL: "https://api.vk.com/method/friends.get?fields=last_name&v=5.68&access_token=\(Session.shared.token)")
        }
        
    
    
    @objc func getGroups() {
        networkManager.getResGroups(stringURL: "https://api.vk.com/method/groups.get?extended=1&count=200&v=5.68&access_token=\(Session.shared.token)")
        }
    
    
    @objc func getPhotos() {
        networkManager.getResPhotos(stringURL: "https://api.vk.com/method/photos.getAll?extended=1&count=200&v=5.68&access_token=\(Session.shared.token)")
        }
    
    
    @objc func getGroupsWithSearch() {
        guard let word = self.textFieldWK.text else {return}
        networkManager.getResGroups(stringURL: "https://api.vk.com/method/groups.search?q=\(String(describing: word))&count=200&v=5.68&access_token=\(Session.shared.token)")
        }
    }
    
    extension WebView: WKNavigationDelegate {
        func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
            
            guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {
                decisionHandler(.allow)
                return
            }

            let params = fragment
                .components(separatedBy: "&")
                .map { $0.components(separatedBy: "=") }
                .reduce([String: String]()) { result, param in
                    var dict = result
                    let key = param[0]
                    let value = param[1]
                    dict[key] = value
                    return dict
            }
            Session.shared.token = params["access_token"]!
            Session.shared.userId = Int(params["access_userId"]!)!

//            let token = params["access_token"]


            decisionHandler(.cancel)
        }
    }
    

