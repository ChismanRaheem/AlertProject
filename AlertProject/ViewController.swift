//
//  ViewController.swift
//  AlertProject
//
//  Created by Raheem Chisman on 7/12/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    
    let successAlert = UIAlertController(title: "Success!", message: "Signup was Successful😄", preferredStyle: UIAlertController.Style.alert)
    let userAlert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
    let passwordAlert = UIAlertController(title: "Error!", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
    let nomatchAlert = UIAlertController(title: "Error!", message: "Password Does Not Match!", preferredStyle: UIAlertController.Style.alert)
    let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
        // button clicked
        print("Alert Button Clicked!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if NameTextField.text == "" {
            
            print ("No Username Found.")
            userAlert.addAction(okButton)
            self.present(userAlert, animated: true, completion: nil)
        }
        else if passwordTextField.text == "" {
            print("No Password Found.")
            passwordAlert.addAction(okButton)
            self.present(passwordAlert, animated: true, completion: nil)
            
        }
        else if passwordTextField.text != password2TextField.text
        {
            
            print ("Password Does Not Match.")
            nomatchAlert.addAction(okButton)
            self.present(nomatchAlert, animated: true, completion: nil)
            
        }
        else
        {print("Successful Match.")}
        successAlert.addAction(okButton)
        self.present(successAlert, animated: true, completion: nil)
    }
    
}
