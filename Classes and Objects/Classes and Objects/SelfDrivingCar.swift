//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Elina Lua Ming on 7/9/19.
//  Copyright © 2019 Elina Lua Ming. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    var destination : String?
    
    override func drive() {
        super.drive()
        
//        if destination != nil {
//            print("driving towards " + destination!)
//        }
        
        if let userSetDestination = destination {
            print("driving towards " + userSetDestination)
        }
    }
}
