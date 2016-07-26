//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Bryan on 7/20/16.
//  Copyright © 2016 Bryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
    
        
        let randomNumber = arc4random_uniform(6)
        
        let guessInt = Int(guess.text!)
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = "Correct!"
                
            } else {
                
                resultLabel.text = "Nope! It was a \(randomNumber)"

                
            }
            
            
            
        } else {
            
            resultLabel.text = "Please enter a number 0 - 5"
            
        }
        
        print(guess.text)
        
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

