//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 13.05.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userName else { return }
               nameLabel?.text = "Welcome, \(userName)"
        view.backgroundColor = .purple
    }
  
    
}
