//
//  ViewController.swift
//  UIImageCodeChallange
//
//  Created by Saleem Younus (Student) on 9/10/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeOnTap: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    let myImage = #imageLiteral(resourceName: "pkm")
    
    override func viewDidLoad() {
        super.viewDidLoad()
       myImageView.image = myImage
    }

    @IBAction func onButtonTap(_ sender: UIButton) {
        let myImage = UIImage (named: "pokemons")
        myImageView.image = myImage
    
    changeOnTap .text = "Squirtle"
        self.view.backgroundColor = UIColor.red
        
    }
    
    

}


