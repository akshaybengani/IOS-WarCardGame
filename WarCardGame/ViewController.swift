//
//  ViewController.swift
//  WarCardGame
//
//  Created by malav desai on 25/11/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore: Int = 0
    var cpuScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealButton(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber < rightNumber {
            playerScore += 1
            leftScoreLabel.text = String(playerScore)
        } else {
            cpuScore += 1
            rightScoreLabel.text = String(cpuScore)
        }
        
    }

}

