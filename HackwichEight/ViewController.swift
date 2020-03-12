//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Charles Ombao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    //WH8 Part 3: Part 2
    //create a variable to hold the target value
    var targetValue = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
        
        startNewRound()
    }

    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
        }
        //Part 3 & 4 Part 3: create new round function
        func startNewRound() {
            targetValue = Int.random(in: 0...100)
            currentValue = lroundf(slider.value)
            
            updateTargetValue()
        }
    


    @IBAction func myGuessButtonPressed(_ sender: Any) {
        //.5 New variable message that displays a message that includes currentValue
        let message = "The current slider value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //1. create alert view
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: . alert)
        
        //2. button that use taps to dismiss view controller
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        //3. add the button to the alertview
        alert.addAction(action)
        
        //4. present alertview on screen
        present(alert, animated: true, completion: nil)
        
        //Part 3-4 Part 3 #3-5
        startNewRound()
    }
    
    func updateTargetValue () {
        self.targetLabel.text = String(targetValue)
    }
}

