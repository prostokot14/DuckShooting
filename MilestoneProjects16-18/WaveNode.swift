//
//  WaveNode.swift
//  MilestoneProjects16-18
//
//  Created by Антон Кашников on 08/01/2024.
//

import SpriteKit

enum WaveType {
    case top, center, bottom
}

enum WaveDirection {
    case right, left
}

final class WaveNode: SKNode {
    var direction: WaveDirection = .right
    var childrenMovement: CGFloat = 1400
    var childrenStartingPoint: CGFloat = -200
    
    func configure(at position: CGPoint, xScale: CGFloat, direction: WaveDirection) {
        self.direction = direction
        self.position = position
        self.xScale = xScale
        yScale = 1
        isUserInteractionEnabled = false
        
        childrenMovement /= xScale
        
        if direction == .left {
            childrenStartingPoint += childrenMovement
            childrenMovement = -childrenMovement
        }
        
        let nWave = Int(1 / xScale) + 1
        for i in 0...nWave {
            // stick several waves together to have them taller without stretching them
            addWave(x: 66 + (i * 798), y: -100)
            addWave(x: 66 + (i * 798), y: -50)
            addWave(x: 66 + (i * 798), y: 0)
            addWave(x: 66 + (i * 798), y: 50)
        }
    }
    
    private func addWave(x: Int, y: Int) {
        let wave = SKSpriteNode(imageNamed: "Water")
        wave.position = CGPoint(x: x, y: y)
        addChild(wave)
    }
}
