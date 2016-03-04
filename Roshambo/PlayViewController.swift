//
//  ViewController.swift
//  Roshambo
//
//  Created by Sydney Mercier on 2/26/16.
//  Copyright © 2016 Sydney Mercier. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    /**
     * Randomly generates opponent's play
     */
    func randomPlay() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = arc4random_uniform(3)
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    @IBAction func startPlay(sender: UIButton) {
        performSegueWithIdentifier("showHand", sender: self)
    }

}

