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
    
// #6
    static func randon() -> BlockColor {
        return BlockColor(rawValue: Int(arc4random_uniform(NumberofColors)))!
    }
    
//  #7
    class Block: Hashable, CustomStringConvertible {
        
//   #8
//        Constants
        let color: BlockColor
        
//   #9
//        Properties
        var column: Int
        var row: Int
        var sprite: SKSpriteNode?
        
//  #10
        var spriteName: String {
            return color.spriteName
        }
        
// #11
        var hashValue: Int {
            return self.column ^ self.row
        }
        
// #12
        var description: String {
            return "\(color): [\(column), \(row)]"
        }
        

        init(column:Int, row:Int, Color:BlockColor) {
            self.column = column
            self.row = row
            self.color = color
        }
    }
    
    func ==(lhs: Block, rhs: Block) -> Bool {
        return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.rawValue == rhs.color.rawValue
    }
    
}
