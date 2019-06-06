//
//  ViewController.swift
//  UITextfieldDemo
//
//  Created by Saleem Younus (Student) on 10/9/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "TopSecret"
       nameLabel.textColor = blue
    }

    @IBOutlet weak var onTap: UIButton!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    
    
    }
    

}

