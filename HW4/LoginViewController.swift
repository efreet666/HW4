//
//  LoginViewController.swift
//  HW4
//
//  Created by Влад Бокин on 06.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func LoginButton(_ sender: Any) {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyB.instantiateViewController(withIdentifier: "TabBarViewController") as? UITabBarController else {
            return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginTextField(_ sender: Any) {
    }
    
   

}
