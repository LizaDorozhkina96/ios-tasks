//
//  SecondViewController.swift
//  Home10.liza
//
//  Created by user on 30.09.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var TextName: UITextField!
    @IBOutlet weak var TextNumber: UITextField!
    @IBOutlet weak var ButtonOpen3Vc: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func GoBack(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func Open3Vc(_ sender: Any) {
        guard let numberText = TextNumber.text,
              let number = Int(numberText),
              number >= 20 && number <= 50 else {
            return
        }
        
        let thirdVC = UIStoryboard(name: "ThirdView", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController")
        
    
        navigationController?.pushViewController(thirdVC, animated: true)
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
}
