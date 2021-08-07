//
//  ViewController.swift
//  HW4
//
//  Created by Влад Бокин on 31.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyB.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else {
            return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyB.instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController else {
            return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

