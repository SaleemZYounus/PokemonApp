//
//  ViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 9/25/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tapNumber = 0

    
    @IBOutlet weak var points: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapPoints(_ sender: UIButton) {
      
            tapNumber += 1
        
              points.text = "\(tapNumber)"
        }
    let charm = #imageLiteral(resourceName: "charm")

    
    

    
   
    }
    



