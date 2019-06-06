//
//  ViewController.swift
//  Operators Challange
//
//  Created by Saleem Younus (Student) on 10/1/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    equalToLabel.text = "evaluates to \(equalTo)"
    notEqualToLabel.text = "evaluates to \(notEqualTo)"
    greaterThanLabel.text = "evaluates to \(greaterThan)"
    lessThanLabel.text = "evaluates to \(lessThan)"
    greaterThanOrEqualToLabel.text = "evaluates to \(greaterThanOrEqualTo)"
    lessThanOrEqualToLabel.text = "evaluates to \(lessThanOrEqualTo)"
   
    @IBOutlet weak var label1: UITextField!
    
    @IBOutlet weak var label2: UITextField!
    
    @IBOutlet weak var checkOnTap: UIButton!
   

    @IBOutlet weak var trueFalse: UILabel!
    
    
    @IBOutlet weak var biggerNumb: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
   
    let numb1 =
    let numb2 =
        if (numb1! > numb2!) {
    trueFalse.text = "Left Is Greater"
            
        
        
    }
}

