//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Elina Lua Ming on 7/1/19.
//  Copyright © 2019 Elina Lua Ming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create an array of ball images
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    @IBOutlet weak var magicBall: UIImageView!

    @IBAction func askButtonPressed(_ sender: Any) {
        updateImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    func updateImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        magicBall.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

