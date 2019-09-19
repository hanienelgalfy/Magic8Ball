//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Hanien ElGalfy on 9/19/19.
//  Copyright © 2019 Hanien ElGalfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1" , "ball2" , "ball3" , "ball4" , "ball5"]
    var randomIndex : Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImageView()
        // Do any additional setup after loading the view.
    }
    
    func updateImageView(){
    randomIndex = Int (arc4random_uniform(5))
    imageView.image = UIImage(named: ballArray[randomIndex])
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        updateImageView()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImageView()
    }
}

