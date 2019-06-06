//
//  ViewController.swift
//  MakeMeBlue
//
//  Created by Saleem Younus (Student) on 8/29/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var makeMeBlueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       makeMeBlueLabel.textColor =  UIColor.blue
        makeMeBlueLabel.text =  "suase"
    }
  
    
    @IBOutlet weak var changeToRedOnTap: action!
    
}




