//
//  loginViewController.swift
//  NavController
//
//  Created by Jack Selbo on 7/4/19.
//  Copyright © 2019 Jack Selbo. All rights reserved.
//

import Foundation
import UIKit
class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        navigateToMainInterface()
        
    }
    
    private func navigateToMainInterface() {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "mainNavigationController") as? mainNavigationController else {
            return
        }
        
    print(mainNavigationVC.topViewController)
    print(mainNavigationVC.viewControllers)
        
        if let mainVC = mainNavigationVC.topViewController as? ViewController {
            mainVC.userName = userField.text
            mainVC.password = passwordField.text
            
        }
        
        present(mainNavigationVC, animated: true, completion: nil)
        
    }
}
