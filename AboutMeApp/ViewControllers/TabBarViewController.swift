//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 25.05.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        prepare()
    }
    private func prepare() {
        guard let viewControllers else { return
        }
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let profileVC = navigationVC.topViewController
                guard let profileVC = profileVC as? ProfileViewController else {
                    return
                }
                profileVC.user = user
            }
        }
    }
    }
  
    

