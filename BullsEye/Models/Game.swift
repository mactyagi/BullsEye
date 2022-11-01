//
//  Game.swift
//  BullsEye
//
//  Created by manukant tyagi on 30/10/22.
//

import Foundation
struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int{
        var difference = sliderValue - self.target
        difference = difference < 0 ? -difference : difference
        let awardedPoints = 100 - difference
        return awardedPoints
    }
}
