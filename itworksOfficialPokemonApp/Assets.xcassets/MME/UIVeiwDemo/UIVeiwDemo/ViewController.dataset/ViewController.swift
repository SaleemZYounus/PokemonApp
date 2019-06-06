//
//  ViewController.swift
//  UIVeiwDemo
//
//  Created by Saleem Younus (Student) on 10/11/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
       var newSquare = UIView (frame: CGRect (x: 20, y: 50, width: 150, height: 150))
        newSquare.backgroundColor = .purple
        view.addSubview(newSquare)
        view.sendSubview(toBack: newSquare)
    }


}

