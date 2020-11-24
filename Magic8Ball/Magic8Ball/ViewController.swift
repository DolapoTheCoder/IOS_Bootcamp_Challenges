//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Dolapo Ogunfidodo on 23/05/2020.
//  Copyright © 2020 DolapoOgunfidodo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex  : Int  = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomMagic8BallPick()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomMagic8BallPick()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        randomMagic8BallPick()
    }
    
    func randomMagic8BallPick() {
        
        randomBallIndex = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
        
    }
}

