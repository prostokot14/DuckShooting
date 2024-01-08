//
//  GameScene.swift
//  MilestoneProjects16-18
//
//  Created by Антон Кашников on 08/01/2024.
//

import SpriteKit

class GameScene: SKScene {
    private var scoreLabel: SKLabelNode!
    private var timerLabel: SKLabelNode!
    private var gameOverLabel: SKLabelNode!
    private var newGameLabel: SKLabelNode!
    
    private var waves = [WaveType: WaveNode]()
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "Background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
        
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.text = "Score: 0"
        scoreLabel.position = CGPoint(x: 8, y: 720)
        scoreLabel.horizontalAlignmentMode = .left
        scoreLabel.fontSize = 48
        addChild(scoreLabel)
        
        timerLabel = SKLabelNode(fontNamed: "Chalkduster")
        timerLabel.text = "60s"
        timerLabel.position = CGPoint(x: 552, y: 720)
        timerLabel.horizontalAlignmentMode = .right
        timerLabel.fontSize = 48
        addChild(timerLabel)
        
        gameOverLabel = SKLabelNode(fontNamed: "Chalkduster")
        gameOverLabel.text = "Game Over"
        gameOverLabel.position = CGPoint(x: 512, y: 384)
        gameOverLabel.horizontalAlignmentMode = .center
        gameOverLabel.fontSize = 68
        gameOverLabel.zPosition = 1
        
        newGameLabel = SKLabelNode(fontNamed: "Chalkduster")
        newGameLabel.text = "New Game"
        newGameLabel.position = CGPoint(x: 512, y: 324)
        newGameLabel.horizontalAlignmentMode = .center
        newGameLabel.name = "newGame"
        newGameLabel.fontSize = 38
        newGameLabel.zPosition = 1
        
        addWave(at: CGPoint(x: -82, y: 350), zPosition: 0, xScale: 1, direction: .right)
        addWave(at: CGPoint(x: -82, y: 200), zPosition: 0.2, xScale: 0.75, direction: .left)
        addWave(at: CGPoint(x: -82, y: 50), zPosition: 0.4, xScale: 0.5, direction: .right)
    }
    
    private func addWave(at position: CGPoint, zPosition: CGFloat, xScale: CGFloat, direction: WaveDirection) {
        let wave = WaveNode()
        wave.configure(at: position, xScale: xScale, direction: direction)
        wave.zPosition = zPosition
        addChild(wave)
//        wave.animate()
    }
}
