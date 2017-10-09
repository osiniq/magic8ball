//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Qiniso Luthuli on 2017/09/12.
//  Copyright © 2017 Qiniso Luthuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomMagicBall : Int = 0
    
    let magicBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var magicBall: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        askButton.layer.cornerRadius = 10.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateMagicBallImage()
    }
    
    func updateMagicBallImage() {
        
        randomMagicBall = Int(arc4random_uniform(5))
        
        magicBall.image = UIImage(named: magicBallArray[randomMagicBall])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateMagicBallImage()
    }

}

