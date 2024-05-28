//
//  ViewController.swift
//  ApazaSnapchat
//
//  Created by Mireya Esthefany Apaza Cuicapuza  on 28/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){ (user, error) in
            print("Intentando Iniciar Sesión")
            if error != nil{
                print("Se presento el siguiente error: \(error)")
            } else {
                print("Inicio de sesión exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

