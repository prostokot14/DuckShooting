//
//  BulletsNode.swift
//  MilestoneProjects16-18
//
//  Created by Антон Кашников on 09/01/2024.
//

import SpriteKit

final class BulletsNode: SKNode {
    func configure(at position: CGPoint) {
        self.position = position
        
        var x = 0
        for _ in 1...6 {
            addBullet(at: x)
            x += 25
        }
        
        // enlarge bullet tap area
        let transparency = SKSpriteNode()
        transparency.size = CGSize(width: 200, height: 150)
        transparency.position = CGPoint(x: -100, y: -75)
        addChild(transparency)
    }
    
    private func addBullet(at x: Int) {
        let bullet = SKSpriteNode(imageNamed: "icon_bullet_gold_long")
        bullet.position = CGPoint(x: x, y: 0)
        bullet.zPosition = 1
        addChild(bullet)
    }
}
