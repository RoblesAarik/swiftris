//
//  Block.swift
//  Swiftris
//
//  Created by Aarik Robles on 10/12/20.
//

import SpriteKit

// #1

    let NumberofColors: UInt32 = 6

// #2

enum BlockColor: Int, CustomStringConvertible {
    
//    #3
//  Enumerated Colors to numbers blue = 0, yellow = 5
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
//    #4
    var spriteName: String {
             switch self {
             case .Blue:
                 return "blue"
             case .Orange:
               return "orange"
             case .Purple:
               return "purple"
             case .Red:
                 return "red"
             case .Teal:
               return "teal"
             case .Yellow:
                 return "yellow"
             }
         }
    
//    #5
    var description: String {
        return self.spriteName
    }
    
    static func randon() -> BlockColor {
        return BlockColor(rawValue: Int(arc4random_uniform(NumberofColors)))!
    }
    
    
    
}
