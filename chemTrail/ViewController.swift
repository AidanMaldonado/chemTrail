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
    }
    
    @IBAction func travelButton() {
        place = locationProv.randomLocation()
        updateLabels()
    }


}

