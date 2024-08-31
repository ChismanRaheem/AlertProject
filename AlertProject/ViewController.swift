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
    
    
    /* Refactored and moved to makeAlert()
    let userAlert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
    let passwordAlert = UIAlertController(title: "Error!", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
    let nomatchAlert = UIAlertController(title: "Error!", message: "Password Does Not Match!", preferredStyle: UIAlertController.Style.alert)
   */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if NameTextField.text == "" {
            
            print ("No Username Found.")
            makeAlert(titleInput: "Error", messageInput: "Username not Found.")
        }
        else if passwordTextField.text == "" {
            print("No Password Found.")
            makeAlert(titleInput: "Error", messageInput: "Password not Found.")
            
        }
        else if passwordTextField.text != password2TextField.text
        {
            
            print ("Password Does Not Match.")
            makeAlert(titleInput: "Failure", messageInput: "Passwords do not match.")
            
        }
        else
        {
            makeAlert(titleInput: "Success", messageInput:"Signup was Successful 😄.")
        }
    }
    
    func makeAlert(titleInput: String, messageInput:String) {
        let successAlert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // button clicked
            print("Alert Button Clicked!")
        }
        print("Successful Match.")
        successAlert.addAction(okButton)
        self.present(successAlert, animated: true, completion: nil)    }

}
