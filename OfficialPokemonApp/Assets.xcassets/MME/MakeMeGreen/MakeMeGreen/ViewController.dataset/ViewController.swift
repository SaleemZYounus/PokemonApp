//
//  ViewController.swift
//  MakeMeGreen
//
//  Created by Saleem Younus (Student) on 8/30/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var MakeMeGreen: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
   
@IBAction func ChangeToGreenOnTap(_ sender: UIButton) {
 
    self.view.backgroundColor =  .green
  MakeMeGreen.text = "HIHIHIHIHIHIH"
    }
    
    @IBAction func changeToWhiteOnTap(_ sender: UIButton) {
    self.view.backgroundColor =  .black
        MakeMeGreen.text =  "Its Dark In Here"
    
    
    
    }

    
    
    
 

}


