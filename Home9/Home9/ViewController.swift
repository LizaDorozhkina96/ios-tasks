//
//  ViewController.swift
//  Home9
//
//  Created by user on 20.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Ball: UIImageView!
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Ball.layer.cornerRadius = 81
    }
    
    @IBAction func TappedButton(_ sender: Any) {
        moveBallRandom()
    }
    
    func moveBallRandom() {
        let viewWidth = self.view.bounds.width
        let viewHeight = self.view.bounds.height
        
        let ballWidth = Ball.bounds.width
        let ballHeight = Ball.bounds.height
        
        let randomX = CGFloat.random(in: 0...(viewWidth - ballWidth))
        let randomY = CGFloat.random(in: 0...(viewHeight - ballHeight))
        
        Ball.frame.origin = CGPoint(x: randomX, y: randomY)
    }
}

