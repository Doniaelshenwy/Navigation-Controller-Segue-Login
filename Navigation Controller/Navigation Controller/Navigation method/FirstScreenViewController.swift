//
//  FirstScreenViewController.swift
//  Navigation Controller
//
//  Created by Donia Elshenawy on 25/02/2022.
//

import UIKit

class FirstScreenViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "SVC") as? SecondScreenViewController{
            guard let name = userNameTextField.text, let password = passwordTextField.text else { return
            }
            if(name != "" && password != ""){
            vc.comingMsg = "Welcome, \(name)"
            self.navigationController?.pushViewController(vc, animated: true)
            }
            else{
                print("Enter data")
            }
        }
    }
    
    

}
