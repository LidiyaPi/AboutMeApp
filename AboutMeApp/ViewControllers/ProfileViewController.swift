//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 25.05.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var fullName: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var company: UILabel!
    @IBOutlet var position: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        navigationItem.backButtonTitle = (user.person.name + " " + user.person.surname)
        profileImage.layer.cornerRadius = 75
                fullName.text = (user.person.name + " " + user.person.surname)
                name.text = "Имя: \(user.person.name)"
                surname.text = "Фамилия: \(user.person.surname)"
                age.text = "Возраст: \(String(user.person.age))"
                company.text = "Компания: \(user.person.company)"
                position.text = "Должность: \(user.person.position)"
    }
}


