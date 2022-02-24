//
//  ViewController.swift
//  HackwichFive
//
//  Created by Gina Yanagihara on 2/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    var currentIndex = 0
    var favoriteFoodsArray = ["Sushi", "Pasta", "Ice Cream", "Strawberries", "Baumkuchen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        topLabel.text = "My Favorite Foods"
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
       
        //If the current index is less than the total amount of strings from the favoriteFoodsArray
        if self.currentIndex < favoriteFoodsArray.count
        {
            //Assigning the display text of the bottomLabel to the first string of the favoriteFoodsArray (since currentIndex = 0)
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            
            //After button is pressed, it will then display "Next" for the text
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            
            //Adding the integer 1 to the currentIndex
            currentIndex += 1
        }
        
        else
        {
            //It will print in the code "button has been disabled"
            print("button has been disabled")
            
            //It is FALSE that the buttonLabel is enabled, in other words the buttonLabel has been disabled
            (buttonLabel!).isEnabled = false
            
            
        }
        
    }
}

