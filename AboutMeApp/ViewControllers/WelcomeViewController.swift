//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 13.05.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUser: UILabel!
   
    var user: User!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        guard let user else { return }
        welcomeUser.text = """
            Welcome, \(user.login)!
            My name is \(user.person.name).
            """
        view.backgroundColor = .purple
    }
}

// MARK: - Set background color
extension UIView {
    
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 210/255,
            green: 109/255,
            blue: 128/255,
            alpha: 1
        )
        let secondaryColor = UIColor(
            red: 107/255,
            green: 148/255,
            blue: 230/255,
            alpha: 1
        )
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
