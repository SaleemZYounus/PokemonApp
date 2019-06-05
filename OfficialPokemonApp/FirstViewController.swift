//
//  FirstViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 5/20/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  var fimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fimer = Timer.scheduledTimer(timeInterval: +0.3, target: self, selector: #selector(FirstViewController.update), userInfo: nil, repeats: true)
        
        
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func button(_ sender: Any) {
        
//        fimer = Timer.scheduledTimer(timeInterval: +0.1, target: self, selector: #selector(FirstViewController.update), userInfo: nil, repeats: true)
    }
    
@objc func update()
{
    progress.progress += 0.07
    
    
    }
    
    @IBOutlet weak var progress: UIProgressView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
