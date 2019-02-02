//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Lewis Watson on 02/02/2019.
//  Copyright © 2019 Lewis Watson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var imageIndex = 0

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        askBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        askBall()
    }
    
    func askBall() {
        imageIndex = Int.random(in: 0 ... 4)
        
        ballImage.image = UIImage(named: ballArray[imageIndex])
    }
    
}

