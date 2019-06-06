//
//  TranViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 5/9/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class TranViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var dismissButton: UIButton!
    
    @IBOutlet weak var menuButton: UIButton!
    
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         menuButton.layer.cornerRadius = menuButton.frame.size.width / 2
        
        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
    }
    
    @IBAction func dismissSecondVC(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
  
   
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! BattleViewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
    
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    
   
    
}

