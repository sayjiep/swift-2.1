//
//  ViewController.swift
//  SocialNetwork
//
//  Created by Алёночка on 03.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    private let login = "admin"
    private let pass = "123"


    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {

        return loginField.text == login && passField.text == pass
    }

}

