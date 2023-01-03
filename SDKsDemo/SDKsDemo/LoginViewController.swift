//
//  LoginViewController.swift
//  SDKsDemo
//
//  Created by Miguel Muñoz on 25/11/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didTapLoginButton(){
        Dataservice.shared.loginWithPassword(passwordField.text ?? "") { isLogged in
            if isLogged{
                self.dismiss(animated: true)
            }else{
                let alert = UIAlertController(title: "Aviso", message: "La contraseña es incorrecta", preferredStyle: .alert)
                let okButton = UIAlertAction(title: "Aceptar", style: .default)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
