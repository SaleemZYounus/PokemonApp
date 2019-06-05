//
//  PassViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 5/23/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class PassViewController: UIViewController {

    @IBOutlet weak var front: UIImageView!
    
    
    
    lazy var textField: UITextField = {
        let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .center
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.isSecureTextEntry = true
        tf.attributedPlaceholder = NSAttributedString(string: "Enter Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        tf.layer.cornerRadius = 5
        tf.layer.borderColor = UIColor.gray.cgColor.copy(alpha: 0.8)
        tf.layer.borderWidth = 2
        tf.layer.shadowOpacity = 0.2
        tf.layer.shadowRadius = 5
    return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        view.backgroundColor = .white
        view.addSubview(textField)
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
      
        
//        if case let textField.text = "saleem"{
//
//
//            func prepare(for: UIStoryboard, sender: Any?){
//
//                performSegue(withIdentifier: "saleem", sender: nil)
//        }
            
        // Do any additional setup after loading the view.
    }
  




    @IBAction func enter(_ sender: UIButton) {
   
     if case let textField.text = "saleem"{
        
            
    func prepare(for: UIStoryboard, sender: Any?){
            
    performSegue(withIdentifier: "saleem", sender: nil)
                    }
    
    }

}
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == UISwipeGestureRecognizerDirection.right{
     front.alpha += 0.2
        }
    }
    
}
