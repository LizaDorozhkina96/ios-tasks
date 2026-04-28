//
//  FourthViewController.swift
//  Home10.liza
//
//  Created by user on 01.10.2024.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var ButtonSecondVC: UIButton!
    @IBOutlet weak var ButtonStartVC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func GoToSecondVC(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

    
    @IBAction func GoToStart(_ sender: Any) {
        dismiss( animated: true)
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
    
    

