//
//  GameScene.swift
//  MilestoneProjects16-18
//
//  Created by Антон Кашников on 08/01/2024.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "Background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
    }
}
