//
//  GameScene.swift
//  Swiftris
//
//  Created by Aarik Robles on 10/7/20.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
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
    }
}
