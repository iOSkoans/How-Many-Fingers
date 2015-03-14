//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Calvin Cheng on 26/2/15.
//  Copyright (c) 2015 Hello HQ Pte Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guess: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
    
        // gives us a random number between 0 to 5
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = "Correct!"
                
            } else {
                
                resultLabel.text = "Nope it was a \(randomNumber)"
            }
            
            
        } else {
            
            resultLabel.text = "Please enter a number 0 - 5"
            
        }
        
        println(guess.text)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

