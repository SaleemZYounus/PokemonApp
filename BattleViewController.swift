///Users/syoun015/Documents/MME/OfficialPokemonApp/OfficialPokemonApp/FirstViewController.swift
//  BattleViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 4/26/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {
    
   
    
    @IBOutlet weak var attack: UIImageView!
    
    @IBOutlet weak var opponent: UIButton!
    
    @IBOutlet weak var dismissButton: UIButton!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
         lbl.text = String(sender.value)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

          dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissSecondVC(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func TapDone(_ sender: Any) {
     opponent.shake()
        attack.image = #imageLiteral(resourceName: "thunder")

        
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.y -= 350},  completion: nil)
         UIView.animate(withDuration: 1/2, animations: {self.attack.frame.origin.y -= 20},  completion: nil)
         UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.x += 130},  completion: nil)
    
    }
    @IBAction func TapDone2(_ sender: Any) {
        attack.image = #imageLiteral(resourceName: "fire")

        opponent.shake()
        
        
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.y -= 350},  completion: nil)
        UIView.animate(withDuration: 1/2, animations: {self.attack.frame.origin.y -= 10},  completion: nil)
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.x += 100},  completion: nil)
    }
    @IBAction func TapDone3(_ sender: Any) {
        attack.image = #imageLiteral(resourceName: "water ball")

        opponent.shake()
        
        
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.y -= 350},  completion: nil)
        UIView.animate(withDuration: 1/2, animations: {self.attack.frame.origin.y -= 10},  completion: nil)
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.x += 100},  completion: nil)
        
    }
    @IBAction func TapDone4(_ sender: Any) {
        
     opponent.shake()
        
        
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.y -= 350},  completion: nil)
        UIView.animate(withDuration: 1/2, animations: {self.attack.frame.origin.y -= 10},  completion: nil)
        UIView.animate(withDuration: 1/3, animations: {self.attack.frame.origin.x += 100},  completion: nil)    }
    
   
}
