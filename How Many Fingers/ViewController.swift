//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Luiz Fernando Santiago on 10/2/15.
//  Copyright © 2015 Luiz Fernando Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        print(diceRoll)
        
        if diceRoll == userGuessTextField.text{
        
            resultLabel.text = "You're right"
        }  else if resultLabel.text!.isEmpty {
            resultLabel.text = "please enter a number"
        } else {
            resultLabel.text = "Wrong! It was a " + diceRoll
        }
        
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

