//
//  loginViewController.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-11.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    
    @IBOutlet weak var txtEmailID: UITextField!
    @IBOutlet weak var switchRememberme: UISwitch!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRememberMeValues()
        // Do any additional setup after loading the view.
    }
    
    private func getRememberMeValues()
    {
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "userEmail")
        {
            txtEmailID.text = email
            
            if let pwd = userDefault.string(forKey: "userPassword")
            {
                txtPassword.text = pwd
            }
        }
    }
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        if self.txtEmailID.text == "admin@gmail.com" && self.txtPassword.text == "12345"
        {
            print("here")
            
            let userDefault = UserDefaults.standard
            if switchRememberme.isOn
            {
                userDefault.setValue(txtEmailID.text, forKey: "userEmail")
                userDefault.set(txtPassword.text, forKey: "userPassword")
            }
            else
            {
                userDefault.removeObject(forKey: "userEmail")
                userDefault.removeObject(forKey: "userPassword")
            }
            self.performSegue(withIdentifier: "UserLoggedIn", sender: nil)
        }
        else
        {
            let alert = UIAlertController(title: "Error", message: "Try again, User Email / Password Invalid", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true)
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
