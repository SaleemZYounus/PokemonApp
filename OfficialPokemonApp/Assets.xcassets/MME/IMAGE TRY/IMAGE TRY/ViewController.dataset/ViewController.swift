//
//  ViewController.swift
//  IMAGE TRY
//
//  Created by Saleem Younus (Student) on 9/5/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
let myImage =  #imageLiteral(resourceName: "blba")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     myImageView.image =  myImage


}

    @IBAction func onButtonTap(_ sender: Any) {
        let myImage =  UIImage (named: "kaneki"s)
        myImageView.image =  myImage
        
    }
    
    
}

