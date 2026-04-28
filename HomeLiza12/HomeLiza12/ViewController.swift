//
//  ViewController.swift
//  HomeLiza12
//
//  Created by Liza Dorozkina on 7.10.24.
//

import UIKit

protocol Student {
    var firstName: String { get }
    var lastName: String { get }
    var growth: Double { get }
    var photo: UIImage { get }
    var isWearingGlasses: Bool { get }
    var glassesFrameColor: String? { get }
}

struct StudentModel: Student {
    var firstName: String
    var lastName: String
    var growth: Double
    var photo: UIImage
    var isWearingGlasses: Bool
    var glassesFrameColor: String?
}

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var surnameLabel: UITextField!
    @IBOutlet weak var heightLabel: UITextField!
    @IBOutlet weak var colorLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    
    @IBOutlet weak var goToSecondVC: UIButton!
    @IBOutlet weak var glassButton: UISwitch!
    
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        guard let firstName = nameLabel.text, !firstName.isEmpty,
              let lastName = surnameLabel.text, !lastName.isEmpty,
              let heightText = heightLabel.text, !heightText.isEmpty, let height = Double(heightText) else {
            return
        }
        
        let isWearingGlasses = glassButton.isOn
        let glassesFrameColor = isWearingGlasses ? colorLabel.text : nil
        
        if isWearingGlasses && (glassesFrameColor?.isEmpty ?? true) {
            return
        }
        
        guard let studentPhoto = imageView.image else {
            return
        }
        
        let student = StudentModel(firstName: firstName, lastName: lastName, growth: height, photo: studentPhoto, isWearingGlasses: isWearingGlasses, glassesFrameColor: glassesFrameColor)
        
        
        
        if let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            secondVC.student = student
            present(secondVC, animated: true)
        } else {
            return
        }
    }
}
    



