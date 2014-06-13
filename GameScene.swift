//
//  GameScene.swift
//  MFClient
//
//  Created by Marc Martinez on 6/11/14.
//  Copyright (c) 2014 the universal framework. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let zone_background : SKSpriteNode = SKSpriteNode(imageNamed:"assets/background.png");
    var in_progress = false;
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        let intro_title : SKLabelNode = SKLabelNode(fontNamed:"Chalkduster")
        intro_title.text = "Mighty Frighties!";
        intro_title.fontSize = 50;
        intro_title.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(intro_title);
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        if !self.in_progress{
            self.doTest();
            zone_background.size = self.size;
            zone_background.anchorPoint = CGPoint(x:0, y:0);
            self.addChild(self.zone_background);
            self.in_progress = true;
        }
        
        /*
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self);
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
        */
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func doTest(){
        println("Test Performed!");
    }
}
