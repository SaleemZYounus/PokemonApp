//
//  PokeViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 4/16/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class PokeViewController: UIViewController, UITextFieldDelegate{

  
//make the rest of the buttons and connect them
    @IBOutlet weak var pulseButton: UIButton!
    @IBOutlet weak var flashButton: UIButton!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        
    }
    
    func setupButtons() {
        pulseButton.layer.cornerRadius = 8
        flashButton.layer.cornerRadius = 8
        shakeButton.layer.cornerRadius = 8
    }
    
    @IBAction func pulseButtonTapped(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func flashButtonTapped(_ sender: UIButton) {
        sender.flash()
    }

    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        sender.shake()
    }
    
    
}

