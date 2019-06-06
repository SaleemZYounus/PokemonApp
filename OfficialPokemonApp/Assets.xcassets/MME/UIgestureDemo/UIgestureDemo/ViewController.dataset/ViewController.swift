//
//  ViewController.swift
//  UIgestureDemo
//
//  Created by Saleem Younus (Student) on 11/27/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    var isBlue = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var changeBcakgroundColorOnTap: UITapGestureRecognizer!
    {
    var aqua = blueView.backgroundColor
        if isBlue == true{
            blueView.backgroundColor = greenView.backgroundColor
        }else{
            blueView.backgroundColor = UIColor (red: 0/255, green: 128/255, blue: 255/255, alpha: 1)
        }
      
    isBlue = !isBlue
    }

    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
        
        var point = sender.location(in: view)
        blueView.center = CGPoint(xy: point,xy: point)
    }
    
}

