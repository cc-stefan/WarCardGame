//
//  ViewController.swift
//  WarCardGame
//
//  Created by Claudiu-Cristian Ștefan on 05.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerCard: UIImageView!
    
    @IBOutlet weak var cpuCard: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //Change the image views
        playerCard.image = UIImage(named: "card\(leftRandomNumber)")
        
        cpuCard.image = UIImage(named: "card\(rightRandomNumber)")
        
        //Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            
            //Update the score
            leftScore += 1
            
            //Update the label
            playerScoreLabel.text = String(leftScore)
            
        }
        else if rightRandomNumber > leftRandomNumber {
            
            //Update the score
            rightScore += 1
            
            //Update the label
            cpuScoreLabel.text = String(rightScore)
            
        }
    }
    
}
