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
    
    let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
    let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
        // button clicked
        print("button clicked")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: Any) {
        if passwordTextField.text == "" {
            print("No user found.")
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
        if passwordTextField.text != password2TextField.text
        {
            
            print ("No user found.")
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
        else
        {print("success")}
    }
}

