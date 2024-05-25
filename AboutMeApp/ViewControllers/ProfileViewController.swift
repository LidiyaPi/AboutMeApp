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
    
    private let person = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = 75
        fullName.text = (person.person.name + " " + person.person.surname)
        name.text = "Имя: \(person.person.name)"
        surname.text = "Фамилия: \(person.person.surname)"
        age.text = "Возраст: \(String(person.person.age))"
        company.text = "Компания: \(person.person.company)"
        position.text = "Должность\(person.person.position)"
    }
    


    }


