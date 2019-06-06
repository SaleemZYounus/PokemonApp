//
//  ViewController.swift
//  Greeting App
//
//  Created by Saleem Younus (Student) on 10/11/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var helloNameLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      //  helloNameLabel.text = "Greating App"
        
    }
   
    @IBAction func nameOnTap(_ sender: Any) {
       let name = textField.text!
        
       helloNameLabel.text = "Hello \(name)"
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        helloNameLabel.text =
            textField.text
        textField.resignFirstResponder()
        
        textField.text = " "
        
        helloNameLabel.text = textField.text
        return true
        
    

}
@IBAction func controler(_ sender: UISegmentedControl) {
        switch
    }
    
}
