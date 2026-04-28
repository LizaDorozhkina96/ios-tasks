//
//  ThirdViewController.swift
//  Home10.liza
//
//  Created by user on 30.09.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OpenFourthVC(_ sender: Any) {
      
        let fourthVC = UIStoryboard(name: "FourthView", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController")
       
        let navigController = UINavigationController(rootViewController: fourthVC)
        navigationController?.pushViewController(fourthVC, animated: true)
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


