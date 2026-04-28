//
//  ViewController.swift
//  Home10.liza
//
//  Created by user on 30.09.2024.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func OpenSecondVC(_ sender: Any) {
        let secondVC = UIStoryboard(name: "SecondView", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        secondVC.modalPresentationStyle = .overFullScreen
        let navController = UINavigationController(rootViewController: secondVC)
        present(navController, animated: true, completion: nil)
        }
}

