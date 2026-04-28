//
//  SecondViewController.swift
//  HomeLiza12
//
//  Created by Liza Dorozkina on 12.10.24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var glassLabel: UILabel!
    
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let student else { return }
        imageView.image = student.photo
        nameLabel.text = student.firstName
        heightLabel.text = String(student.growth)
        surnameLabel.text = student.lastName
        glassLabel.text = student.glassesFrameColor ?? "Нет очков"
    }
}
