//
//  LocationProvider.swift
//  chemTrail
//
//  Created by Aidan Maldonado on 3/20/19.
//  Copyright © 2019 Aidan Maldonado. All rights reserved.
//

import UIKit

struct LocationProvider {
    var location = ["Nowhere", "Shack"]
    
    func randomLocation() -> String {
        let random = Int.random(in: 0..<location.count)
        let randLocation = location[random]
        return randLocation
    }
}
