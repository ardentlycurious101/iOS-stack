//
//  Car.swift
//  Classes and Objects
//
//  Created by Elina Lua Ming on 7/9/19.
//  Copyright © 2019 Elina Lua Ming. All rights reserved.
//

import Foundation

enum CarType {
    
    case Sedan
    case Coupe
    case Hatchback
    
}

class Car {
    
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    
    init () {
        
    }
    
    convenience init(customerChosenColor : String) {
        self.init()
        color = customerChosenColor
    }
    
    func drive() {
        print("Car is moving")
    }
    
}
