//
//  ViewController.swift
//  Login
//
//  Created by admin64 on 03/09/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Username: UITextField!
    
@IBOutlet weak var forgottenUsernameOrPassword: UIButton!
@IBOutlet weak var forgotUserNameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgottenUsernameOrPassword {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = Username.text
        }
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "loginViewSegue", sender: forgotUserNameButton)
    }
    
    @IBAction func forgottenUsernameOrPassword(_ sender: Any) {
        performSegue(withIdentifier: "loginViewSegue", sender: forgottenUsernameOrPassword)
    }
}
