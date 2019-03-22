//
//  ViewController.swift
//  chemTrail
//
//  Created by Aidan Maldonado on 3/20/19.
//  Copyright © 2019 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Game Variables
    var chems = 10
    var turns = 25
    var locationProv = LocationProvider()
    var place = "Nowhere"
    var hiddenToggle = false
    
    //Game Labels
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var chemLabel: UILabel!
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        hideToggle()
    }
    
    //Updates all game labels with their variable counterparts
    func updateLabels() {
        placeLabel.text = place
        turnLabel.text = "Turns: \(turns)"
        chemLabel.text = "Chems: \(chems)"
    }
    
    //Takes the ability to see the action buttons on and off
    func hideToggle() {
        if hiddenToggle {
            actionButton.isHidden = false
            hiddenToggle = false
        } else {
            actionButton.isHidden = true
            hiddenToggle = true
        }
    }
    
    //Decrements game values when travel is pressed, changes location
    //Declares if the game is over or not/the player has lost
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

