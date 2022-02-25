//
//  FirstSegueViewController.swift
//  Navigation Controller
//
//  Created by Donia Elshenawy on 25/02/2022.
//

import UIKit

class FirstSegueViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "MoveToSecondScreen", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let name = userNameTextField.text, let passwd = passwordTextField.text else {
            return
        }
        if(name != "" && passwd != ""){
            if let destination = segue.destination as? SecondSegueViewController{
                destination.comingMsg = "Welcome, \(name)"
            }
        }
        else{
            print("Enter data")
        }
    }
    

}
