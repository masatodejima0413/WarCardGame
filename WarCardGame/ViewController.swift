//
//  ViewController.swift
//  WarCardGame
//
//  Created by 出島賢人 on 2019/08/24.
//  Copyright © 2019 masatodejima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else {
            
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        leftImageView.image = UIImage(named: "back")
        rightImageView.image = UIImage(named: "back")
        
        leftScore = 0
        rightScore = 0
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
    }
}
    
