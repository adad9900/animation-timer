//
//  ViewController.swift
//  animation timer
//
//  Created by D7703_16 on 2018. 4. 5..
//  Copyright © 2018년 D7703_16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var direction = 1
    var myTimer = Timer()
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }

    @IBAction func start(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    
    @objc func doAnimation() {
        /*  1.....5그리고 1....5 반복
        if counter == 5 {
           counter = 1
        } else {
            counter = counter + 1
        }
        */
        
        // 1....5 그리고 5....1 반복
        if counter == 5 {
            direction = 0
        }
        else if counter == 1{
            direction = 1
        }
        if direction == 1{
            counter += 1;}
        else if direction == 0{
            counter = counter - 1
        }
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }

}

