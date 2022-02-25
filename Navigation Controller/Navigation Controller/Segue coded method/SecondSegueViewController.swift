//
//  SecondSegueViewController.swift
//  Navigation Controller
//
//  Created by Donia Elshenawy on 25/02/2022.
//

import UIKit

class SecondSegueViewController: UIViewController {
var comingMsg = ""
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = comingMsg
      
    }
    

   

}
