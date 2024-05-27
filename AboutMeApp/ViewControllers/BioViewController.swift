//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 25.05.2024.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var fullName: UILabel!
    @IBOutlet var biography: UITextView!
    
    private let person = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
//        navigationItem.backBarButtonItem?.title = "KLSJDFNLKSNGKLNLKS"
        fullName.text = ((person.person.name ?? "") + " " + person.person.surname + " " + "Bio")
        biography.text = person.person.bio
    }
    
   

}
