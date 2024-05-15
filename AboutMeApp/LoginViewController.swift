//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 06.05.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    let user = "1"
    let password = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user, passwordTF.text == password else {
            let alertController = UIAlertController(
                title: "Invalid Login or Password",
                message: "Please enter correct login and password",
                preferredStyle: .alert
            )
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = " "
        passwordTF.text = " "
    }

//    @IBOutlet var forgotNameTapped: UILabel! {
//        
//    }
//    
//    @IBOutlet var forgotPasswordTapped: UILabel! {
//        showAlert(title: "Oops!", message: "Your name is \(user) 😉")
//    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
    }
    
    
    
}

