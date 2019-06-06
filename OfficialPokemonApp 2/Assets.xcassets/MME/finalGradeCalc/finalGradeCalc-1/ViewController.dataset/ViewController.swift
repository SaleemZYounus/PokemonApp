//
//  ViewController.swift
//  finalGradeCalc
//
//  Created by Saleem Younus (Student) on 12/3/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
   @IBOutlet weak var gradeInClass: UITextField!
  
    @IBOutlet weak var desiredGradeInClass: UITextField!
    @IBOutlet weak var weightOfFinal: UITextField!
    @IBOutlet weak var extraCredit: UILabel!
    @IBOutlet weak var segmentedOut: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func calc(_ sender: UIButton) {
        

let desired = Double(desiredGradeInClass.text!)!
        let weight = Double ((weightOfFinal.text!))! / 100
        let gradeInClass2 = Double (gradeInClass.text!)!
        let currentWeight = (1 - weight)
        
        let finalGrade = (desired - (gradeInClass2 * currentWeight)) / weight
        
        
        scoreLabel.text = "\(finalGrade)% "
        
        if finalGrade < 100 {
            self.view.backgroundColor = UIColor.green
        }
        else if finalGrade > 100 {
            view.backgroundColor = UIColor.red
            extraCredit.text = "Ask for extra credit"
}
}
}
