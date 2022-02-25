//
//  SecondScreenViewController.swift
//  Navigation Controller
//
//  Created by Donia Elshenawy on 25/02/2022.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    var comingMsg = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = comingMsg
      
    }
    

    

}
