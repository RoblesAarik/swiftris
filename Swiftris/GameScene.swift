//
//  GameScene.swift
//  Swiftris
//
//  Created by Aarik Robles on 10/7/20.
//

import SpriteKit
import GameplayKit

// #1
    let TickLengthLevelOne = TimeInterval(600)

class GameScene: SKScene {
    
//   #2
//    This is a closure, just a block of code that performs a function. it has empty params and is optional due to ?
    var tick: (() -> ())?
    var tickLengthMillis = TickLengthLevelOne
    var lastTick: NSDate?
    
    required init(coder aDecoder: NSCoder) {
         fatalError("NSCoder not supported")
     }

     override init(size: CGSize) {
         super.init(size: size)

         anchorPoint = CGPoint(x: 0, y: 1.0)

         let background = SKSpriteNode(imageNamed: "background")
         background.position = CGPoint(x: 0, y: 0)
         background.anchorPoint = CGPoint(x: 0, y: 1.0)
         addChild(background)
     }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
//      #3
//        If else statement, keep ticking unless in a paused state
        guard let lastTick = lastTick else {
            return
        }
        
//        resumes where last tick left off at using lasttick multiplied by -1000
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis {
            self.lastTick = NSDate()
            tick?()
        }
    }
    
//    #4
    func startTicking() {
        lastTick = NSDate()
    }
    
    func stopTicking() {
        lastTick = nil
    }
}
