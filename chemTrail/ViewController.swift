//
//  ViewController.swift
//  chemTrail
//
//  Created by Aidan Maldonado on 3/20/19.
//  Copyright © 2019 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var chems = 10
    var turns = 25
    var locationProv = LocationProvider()
    var place = "Nowhere"
    
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var chemLabel: UILabel!
    @IBOutlet weak var turnLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    func updateLabels() {
        placeLabel.text = place
        turnLabel.text = "Turns: \(turns)"
        chemLabel.text = "Chems: \(chems)"
    }
    
    @IBAction func travelButton() {
        if chems >= 1 && turns >= 1 {
            place = locationProv.randomLocation()
            turns -= 1
            chems -= 1
        } else {
            place = "Game over"
        }
        
        updateLabels()
    }


}

