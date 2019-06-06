//
//  FirstViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 4/29/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    
    
    @IBOutlet weak var menuButton: UIButton!
    
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.layer.cornerRadius = menuButton.frame.size.width / 2
        
    }
    @IBAction func startButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue1", sender: nil)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let secondVC = segue.destination as! BattleViewController
        secondVC.transitioningDelegate = self
      secondVC.modalPresentationStyle = .custom
    }
    
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menuButton.center
        //transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
