//
//  ViewController.swift
//  OfficialPokemonApp
//
//  Created by Saleem Younus (Student) on 9/25/18.
//  Copyright © 2018 Grayslake Central Highschool. All rights reserved.
//

import UIKit
import SafariServices
import AVFoundation



class ViewController: UIViewController {

    var tapNumber = 0
    var tapVar = 0
    var tapQuan = 0

    
    var audioPlayer = AVAudioPlayer()
    
    func playSoundWith(fileName: String, fileExtension: String) -> Void {
        let audioSourceURL: URL!
        audioSourceURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension)

        if audioSourceURL == nil {
            print("requested song no no")
        }else{
            do {
                audioPlayer = try AVAudioPlayer.init(contentsOf: audioSourceURL!)
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }catch{
                print(error)
            }
        }
        
    }
    
    @IBAction func play(_ sender: Any) {
        playSoundWith(fileName: "btsluv", fileExtension: "mp3")
    }
    @IBAction func reset(_ sender: Any) {
        audioPlayer.pause()
    }
    @IBAction func pause(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
    }
    

    // let happyness = ∞
   
    @IBOutlet weak var poki: UIImageView!
     //background
    @IBOutlet weak var points: UILabel!
    
    @IBOutlet weak var pointBulb: UILabel!
    
    @IBOutlet weak var pointSqrt: UILabel!
    
    @IBOutlet weak var bulbEvo: UIImageView!
    
    @IBOutlet weak var charmEvo: UIImageView!
    
    @IBOutlet weak var sqrtEvo: UIImageView!
    
    @IBOutlet weak var sparkle1: UIImageView!
    //used for sparkles
    @IBOutlet weak var sparkle2: UIImageView!
    //
    @IBOutlet weak var sparkle3: UIImageView!
    //
    @IBOutlet weak var labelToChangeFromAlert: UILabel!
   
    @IBOutlet weak var evolve1: UILabel!
    
    @IBAction func youtube(_ sender: UIButton) {
        let svc = SFSafariViewController(url: url)
        present(svc, animated: true, completion: nil)
    }
    
    let url = URL(string: "https://youtube.com/c/supremepianist")!

   
    @IBOutlet weak var pulseButton: UIButton!
    @IBOutlet weak var flashButton: UIButton!
    @IBOutlet weak var shakeButton: UIButton!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        bulbEvo.image = #imageLiteral(resourceName: "Bulbasaur")
        
        charmEvo.image = #imageLiteral(resourceName: "charm")
    
        sqrtEvo.image = #imageLiteral(resourceName: "pokemons")
        
        poki.image = #imageLiteral(resourceName: "trainer")
        
        evolve1.text = "Evolves at 25"
    }
    
    
       func setupButtons() {
            pulseButton.layer.cornerRadius = 8
        }
    
    

    
    
    @IBAction func tapPoints(_ sender: UIButton) {
      tapNumber += 1
        points.text = "XP: \(tapNumber)"
        if tapNumber == 25
        {
            charmEvo.image = #imageLiteral(resourceName: "charmea")
        }
        else if tapNumber == 50{
            charmEvo.image = #imageLiteral(resourceName: "Charizard")
            }
        else if tapNumber == 70{
            charmEvo.image = #imageLiteral(resourceName: "Mega_Charizard_X")
            sparkle2.image = #imageLiteral(resourceName: "spark")
       poki.image = #imageLiteral(resourceName: "yoshi")
        }
        else if tapNumber == 100{
        charmEvo.image = #imageLiteral(resourceName: "mega chrz u")
    poki.image = #imageLiteral(resourceName: "black")
        }
        let theeButton = sender as! UIButton
        
        var hounds = theeButton.bounds
        
        UIView.animate(withDuration: 0.05, delay: 0.1, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
            theeButton.bounds = CGRect(x: hounds.origin.x - 10, y: hounds.origin.y, width: hounds.size.width + 5, height: hounds.size.height)
        }) { (success:Bool) in
            if success {
                
                UIView.animate(withDuration: 0.15, animations: {
                    theeButton.bounds = hounds
                })
                
            }
        }
    }
    @IBAction func tapBulb(_ sender: UIButton) {
        tapVar += 1
        pointBulb.text = "XP: \(tapVar)"
        
        if tapVar == 25
        {
            bulbEvo.image = #imageLiteral(resourceName: "bulb")
         evolve1.text = "Evolves at 50"
        }
        else if tapVar == 50
        {
            poki.image = #imageLiteral(resourceName: "vulp")
            bulbEvo.image = #imageLiteral(resourceName: "Venusaur")
            evolve1.text = "Evolves at 100"
        }
        else if tapVar == 100
        {
            bulbEvo.image = #imageLiteral(resourceName: "Mega_Venusaur")
            sparkle1.image = #imageLiteral(resourceName: "spark")
        poki.image = #imageLiteral(resourceName: "poki6")
        }
    

       let theButton = sender as! UIButton
        
        var bounds = theButton.bounds
        
        UIView.animate(withDuration: 0.05, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 10, y: bounds.origin.y, width: bounds.size.width + 5, height: bounds.size.height)
        }) { (success:Bool) in
            if success {
                
                UIView.animate(withDuration: 0.15, animations: {
                    theButton.bounds = bounds
                })
                
            }
        }
        
}
    
    @IBAction func tapSqrt(_ sender: UIButton){
    tapQuan += 1
        pointSqrt.text = "XP: \(tapQuan)"
        if tapQuan == 25
        {
        sqrtEvo.image = #imageLiteral(resourceName: "Wartortle")
        }
        else if tapQuan == 50
        {
        poki.image = #imageLiteral(resourceName: "black")
            sqrtEvo.image = #imageLiteral(resourceName: "Blastoise")
        }
        else if tapQuan == 100
        {
            sqrtEvo.image = #imageLiteral(resourceName: "Mega_Blastoise")
             poki.image = #imageLiteral(resourceName: "blooo")
            sparkle3.image = #imageLiteral(resourceName: "spark")
           
            view.backgroundColor = UIColor.orange
        
        
        let alert = UIAlertController(title: "WOW GREAT JOB U FINISHED THE GAME...     FOR NOW", message: nil, preferredStyle: .alert)
            
        
            //Create the alert actions
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            {action in
                //Counsole output only
                print("Cancel Pressed")
        
        
        //change label text on alert pressed.
                
                self.labelToChangeFromAlert.text = "Alert 'Cancel' Button Pressed"
        
        }
                
            // Continuing Creating the alert actions.
            
            let ok = UIAlertAction(title: "!YAY!", style: .default)
            {action in
                if let firstName = alert.textFields![0].text,
                    let lastName = alert.textFields![1].text{
                    
                    // Console Output only
                    
                
                    // Change Label text on alert pressed
                    
                    self.labelToChangeFromAlert.text = "Noice"
                    
                
                }
        }
            
            // Add alert actions to the alert
            alert.addAction(cancel)
            alert.addAction(ok)
            
            // Present the alert
            
            self.present(alert, animated: true, completion: nil)
        
        }
    
    let theyButton = sender as! UIButton
    
    var pounds = theyButton.bounds
    
    UIView.animate(withDuration: 0.05, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
        theyButton.bounds = CGRect(x: pounds.origin.x - 10, y: pounds.origin.y, width: pounds.size.width + 5, height: pounds.size.height)
    }) { (success:Bool) in
    if success {
    
    UIView.animate(withDuration: 0.15, animations: {
    theyButton.bounds = pounds
    })
    
            }
        }
        func applyMotionEffect (toView view:UIView, magnitude:Float) {
            let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
            xMotion.minimumRelativeValue = -magnitude
            xMotion.maximumRelativeValue = magnitude
            
            let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
            yMotion.minimumRelativeValue = -magnitude
            yMotion.maximumRelativeValue = magnitude
            
            let group = UIMotionEffectGroup()
            group.motionEffects = [xMotion, yMotion]
            
            view.addMotionEffect(group)
        }
        
      
    }
  /*
    @IBAction func switchNow(_ sender: UISwipeGestureRecognizer) {
    
            if  ( sender.direction == UISwipeGestureRecognizerDirection.right) {
                poki.image = #imageLiteral(resourceName: "poki2")
            }
            else if ( sender.direction == UISwipeGestureRecognizerDirection.right){
                poki.image = #imageLiteral(resourceName: "poki1")
        }
            else if ( sender.direction == UISwipeGestureRecognizerDirection.right){
                poki.image = #imageLiteral(resourceName: "yoshi")
        }
            else if ( sender.direction == UISwipeGestureRecognizerDirection.right){
                poki.image = #imageLiteral(resourceName: "poki4")
                
        }
            else if ( sender.direction == UISwipeGestureRecognizerDirection.right){
                poki.image = #imageLiteral(resourceName: "poki5")
        
        }
    
     
     }
*/

    
   
    

    







}
