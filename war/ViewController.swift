//
//  ViewController.swift
//  war
//
//  Created by Flint Ory on 6/14/15.
//  Copyright (c) 2015 FlintOry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
        self.playRoundButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        var myDeck = deck()
        self.firstCardImageView.image = UIImage(named: myDeck.pickCard())
        self.secondCardImageView.image = UIImage(named: myDeck.pickCard())
    }
    
    class deck {
        
        init(){
        
        }
        var deck:[String] = ["ace_of_spades", "2_of_hearts", "8_of_hearts"]
        
        func pickCard() -> String {
            var randomCardNumber:Int = Int(arc4random_uniform(3))
            return deck[randomCardNumber]
        }
    }

}

