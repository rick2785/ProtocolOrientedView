//
//  LoginVC.swift
//  ProtocolOrientedView
//
//  Created by Rickey Hrabowskie on 9/23/16.
//  Copyright © 2016 Rickey Hrabowskie. All rights reserved.
//

import UIKit

class DataEntryTextField: UITextField, Jitterable {
    
}

class LoginButton: UIButton, Jitterable {
    
}

class FlashingLabel: UILabel, Flashable, Jitterable {
    
}

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: DataEntryTextField!
    @IBOutlet weak var passwordField: DataEntryTextField!
    @IBOutlet weak var errorLabel: FlashingLabel!
    @IBOutlet weak var loginBtn: LoginButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginBtnWasPressed(_ sender: AnyObject) {
        emailField.jitter()
        passwordField.jitter()
        loginBtn.jitter()
        errorLabel.flash()
        errorLabel.jitter()
    }


}

