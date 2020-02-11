//
//  ViewController.swift
//  MyResume
//
//  Created by Andry Pro on 10.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Private Properties
    private let user = User()
    
    // MARK: - IB Outlets
    @IBOutlet weak var userNameTexfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        userCheck()
    }
    
    @IBAction func forgotUserNamePressed() {
        forgotLoginAller()
    }
    
    @IBAction func forgotPasswordPressed() {
        forgotPasswordAller()
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {}
   
    // MARK: - Private Methods
    private func userCheck() {
        if user.login == userNameTexfield.text && user.password == passwordTextField.text {
            performSegue(withIdentifier: "loginSegue", sender: nil)
            userNameTexfield.text = ""
            passwordTextField.text = "" // тут пришлось костыль поставть, так и не понял как нормально выгрузить viewController
        } else {
            if userNameTexfield.text == "" {
                authorizationAller(with: "User name is empty")
                return
            }
            if userNameTexfield.text != user.login {
                authorizationAller(with: "Login failed")
                return
            }
            if passwordTextField.text == ""{
                authorizationAller(with: "Password is empty")
                return
            }
            if passwordTextField.text != user.password {
                authorizationAller(with: "Passwor Failed")
                return
            }
        }
    }
}

// Allert controllers
extension LoginViewController {
    func authorizationAller(with massage: String) {
        let alert = UIAlertController(title: "Wrong format!",
                                      message: massage,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func forgotLoginAller() {
        let alert = UIAlertController(title: "Your login is: \(user.login)",
            message: "Press \"OK\" button for use it",
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: {action in self.userNameTexfield.text = self.user.login})
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .default,
                                         handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    func forgotPasswordAller() {
        let alert = UIAlertController(title: "Your password is: \(user.password)",
            message: "Press \"OK\" button for use it",
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: {action in self.passwordTextField.text = self.user.password})
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .default,
                                         handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
}
