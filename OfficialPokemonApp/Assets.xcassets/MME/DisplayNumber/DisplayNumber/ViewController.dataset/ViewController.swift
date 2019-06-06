//
//  ViewController.swift
//  DisplayNumber
//
//  Created by Saleem Younus (Student) on 9/24/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UITextField!
    
    @IBOutlet weak var numberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func numberButton(_ sender: UIButton) {
    
    
      let numberToDisplay = numberTextField.text
        
        numberLabel.text = numberToDisplay
        

        
    }

}

