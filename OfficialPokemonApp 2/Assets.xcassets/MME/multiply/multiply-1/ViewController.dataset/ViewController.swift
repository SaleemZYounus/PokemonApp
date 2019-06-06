//
//  ViewController.swift
//  multiply
//
//  Created by Saleem Younus (Student) on 10/22/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController do
    {

    weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    @IBOutlet weak var labels: UILabel!
    
    @IBOutlet weak var images: UIImageView!
    let marioKart = #imageLiteral(resourceName: "daisy")
    let funnier = #imageLiteral(resourceName: "kaneki")
    let funny = #imageLiteral(resourceName: "yoshi")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.view.backgroundColor = .yellow
    }

    
    @IBAction func Add(_ sender: UIButton) {
        
        let numberOne:Int? = Int(num1.text!)
        let numberTwo:Int? = Int(num2.text!)
        labels.text = String(numberOne! + numberTwo!)
        if Int(labels.text!) == 64
        {
            images.image = marioKart
        }
        else
        {
            if (Int(labels.text!)! % 2 == 0)
            {
             images.image = funnier
            }
            else
            {
             images.image = funny
            }
        }
        
    }
    
    @IBAction func Sub(_ sender: UIButton) {
        
        let numberOne:Int? = Int(num1.text!)
        let numberTwo:Int? = Int(num2.text!)
        labels.text = String(numberOne! - numberTwo!)
        
        if Int(labels.text!) == 64
        {
            images.image = marioKart
        }
        else
        {
            if (Int(labels.text!)! % 2 == 0)
            {
                images.image = funnier
            }
            else
            {
                images.image = funny
            }
            
        }
    }
    
   
        
    @IBAction func Multiply(_ sender: UIButton)
    {
        let numberOne:Int? = Int(num1.text!)
        let numberTwo:Int? = Int(num2.text!)
        labels.text = String(numberOne! * numberTwo!)
    }
    else
    {
    if Int(labels.text!) == 64
        {
            images.image = marioKart
        }
        else
        {
            if (Int(labels.text!)! % 2 == 0)
            {
                images.image = funnier
            }
            else
            {
                images.image = funny
            }
    
        }
        
    
    @IBAction func Divide(_ sender: UIButton) {
        let numberOne:Int? = Int(num1.text!)
        let numberTwo:Int? = Int(num2.text!)
        labels.text = String(numberOne! / numberTwo!)
        
        if Int(labels.text!) == 64
        {
            images.image = marioKart
        }
        else
        {
            if (Int(labels.text!)! % 2 == 0)
            {
                images.image = funnier
            }
            else
            {
                images.image = funny
            }
            
        }
    }
}
}
}

