//
//  ViewController.swift
//  ZigZagGame
//
//  Created by Ricky Chen on 3/3/16.
//  Copyright © 2016 Ricky Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var GameView: UIView!
    @IBOutlet weak var Ball: UIImageView!
    @IBOutlet weak var GameOver: UIImageView!
    @IBOutlet weak var Retry: UIButton!
    @IBOutlet weak var ScoreBoard: UIImageView!
    @IBOutlet weak var Play: UIButton!
    @IBOutlet weak var Logo: UILabel!
    
    @IBOutlet weak var PillarTop: UIImageView!
    @IBOutlet weak var PillarTop2: UIImageView!
    @IBOutlet weak var PillarTop3: UIImageView!
    @IBOutlet weak var PillarTop4: UIImageView!
    @IBOutlet weak var PillarTop5: UIImageView!
    @IBOutlet weak var PillarTop6: UIImageView!
    
    @IBOutlet weak var Pillar1: UIImageView!
    @IBOutlet weak var Pillar2: UIImageView!
    @IBOutlet weak var Pillar3: UIImageView!
    @IBOutlet weak var Pillar4: UIImageView!
    @IBOutlet weak var Pillar5: UIImageView!
    @IBOutlet weak var Pillar6: UIImageView!
    @IBOutlet weak var Pillar7: UIImageView!
    @IBOutlet weak var Pillar8: UIImageView!
    @IBOutlet weak var Pillar9: UIImageView!
    @IBOutlet weak var Pillar10: UIImageView!
    @IBOutlet weak var Pillar11: UIImageView!
    @IBOutlet weak var Pillar12: UIImageView!
    @IBOutlet weak var Pillar13: UIImageView!
    @IBOutlet weak var Pillar14: UIImageView!
    @IBOutlet weak var Pillar15: UIImageView!
    @IBOutlet weak var Pillar16: UIImageView!
    @IBOutlet weak var Pillar17: UIImageView!
    @IBOutlet weak var Pillar18: UIImageView!
    @IBOutlet weak var Pillar19: UIImageView!
    @IBOutlet weak var Pillar20: UIImageView!
    @IBOutlet weak var Pillar21: UIImageView!
    @IBOutlet weak var Pillar22: UIImageView!
    @IBOutlet weak var Pillar23: UIImageView!
    @IBOutlet weak var Pillar24: UIImageView!
    @IBOutlet weak var Pillar25: UIImageView!
    @IBOutlet weak var Pillar26: UIImageView!
    
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var ScoreOnBoard: UILabel!
    @IBOutlet weak var HightestScoreOnBoard: UILabel!    
    
    var timer = NSTimer()
    var TapsValid:Bool?
    var BallRight:Bool?
    var BallChange:Bool?
    var BallCenter: CGPoint?
    var PillarTopCenter: CGPoint?
    var PillarTop2Center: CGPoint?
    var PillarTop3Center: CGPoint?
    var PillarTop4Center: CGPoint?
    var PillarTop5Center: CGPoint?
    var PillarTop6Center: CGPoint?
    var Pillar1Center: CGPoint?
    var Pillar2Center: CGPoint?
    var Pillar3Center: CGPoint?
    var Pillar4Center: CGPoint?
    var Pillar5Center: CGPoint?
    var Pillar6Center: CGPoint?
    var Pillar7Center: CGPoint?
    var Pillar8Center: CGPoint?
    var Pillar9Center: CGPoint?
    var Pillar10Center: CGPoint?
    var Pillar11Center: CGPoint?
    var Pillar12Center: CGPoint?
    var Pillar13Center: CGPoint?
    var Pillar14Center: CGPoint?
    var Pillar15Center: CGPoint?
    var Pillar16Center: CGPoint?
    var Pillar17Center: CGPoint?
    var Pillar18Center: CGPoint?
    var Pillar19Center: CGPoint?
    var Pillar20Center: CGPoint?
    var Pillar21Center: CGPoint?
    var Pillar22Center: CGPoint?
    var Pillar23Center: CGPoint?
    var Pillar24Center: CGPoint?
    var Pillar25Center: CGPoint?
    var Pillar26Center: CGPoint?
    
    var Score: Int = 0
    var HighScore: Int = 0
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    
    @IBAction func Retry(sender: AnyObject) {
        self.viewDidLoad()
        self.Play(Play)
    }
    
    
    //After user press the play button
    @IBAction func Play(sender: AnyObject) {
        TapsValid = true
        BallChange = true
        
        self.GameOver.hidden = true
        self.Retry.hidden = true
        self.ScoreBoard.hidden = true
        self.Play.hidden = true
        self.Ball.hidden = false
        self.ScoreOnBoard.hidden = true
        self.HightestScoreOnBoard.hidden = true
        self.ScoreLabel.hidden = false
        self.Logo.hidden = true
        
        self.Ball.center.x = 178.0
        self.Ball.center.y = 390.0
        self.Pillar1.center = CGPointMake(175.0,436.0)
        self.Pillar2.center = CGPointMake(214.0,407.0)
        self.PillarTop2.center = CGPointMake(Pillar1.center.x, Pillar1.center.y - 35 )
        self.PillarTop3.center = CGPointMake(Pillar2.center.x, Pillar2.center.y - 35 )
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.045, target: self, selector: Selector("movement"), userInfo: nil, repeats: true)
        
        self.Pillar3.center = pillarPlacement(Pillar2.center.x,y: Pillar2.center.y)
        self.Pillar4.center = pillarPlacement(Pillar3.center.x,y: Pillar3.center.y)
        self.Pillar5.center = pillarPlacement(Pillar4.center.x,y: Pillar4.center.y)
        self.Pillar6.center = pillarPlacement(Pillar5.center.x,y: Pillar5.center.y)
        self.Pillar7.center = pillarPlacement(Pillar6.center.x,y: Pillar6.center.y)
        self.Pillar8.center = pillarPlacement(Pillar7.center.x,y: Pillar7.center.y)
        self.Pillar9.center = pillarPlacement(Pillar8.center.x,y: Pillar8.center.y)
        self.Pillar10.center = pillarPlacement(Pillar9.center.x,y: Pillar9.center.y)
        self.Pillar11.center = pillarPlacement(Pillar10.center.x,y: Pillar10.center.y)
        self.Pillar12.center = pillarPlacement(Pillar11.center.x,y: Pillar11.center.y)
        self.Pillar13.center = pillarPlacement(Pillar12.center.x,y: Pillar12.center.y)
        self.Pillar14.center = pillarPlacement(Pillar13.center.x,y: Pillar13.center.y)
        self.Pillar15.center = pillarPlacement(Pillar14.center.x,y: Pillar14.center.y)
        self.Pillar16.center = pillarPlacement(Pillar15.center.x,y: Pillar15.center.y)
        self.Pillar17.center = pillarPlacement(Pillar16.center.x,y: Pillar16.center.y)
        self.Pillar18.center = pillarPlacement(Pillar17.center.x,y: Pillar17.center.y)
        self.Pillar19.center = pillarPlacement(Pillar18.center.x,y: Pillar18.center.y)
        self.Pillar20.center = pillarPlacement(Pillar19.center.x,y: Pillar19.center.y)
        self.Pillar21.center = pillarPlacement(Pillar20.center.x,y: Pillar20.center.y)
        self.Pillar22.center = pillarPlacement(Pillar21.center.x,y: Pillar21.center.y)
        self.Pillar23.center = pillarPlacement(Pillar22.center.x,y: Pillar22.center.y)
        self.Pillar24.center = pillarPlacement(Pillar23.center.x,y: Pillar23.center.y)
        self.Pillar25.center = pillarPlacement(Pillar24.center.x,y: Pillar24.center.y)
        self.Pillar26.center = pillarPlacement(Pillar25.center.x,y: Pillar25.center.y)
        
        self.Pillar1.hidden = false
        self.Pillar2.hidden = false
        self.Pillar3.hidden = false
        self.Pillar4.hidden = false
        self.Pillar5.hidden = false
        self.Pillar6.hidden = false
        self.Pillar7.hidden = false
        self.Pillar8.hidden = false
        self.Pillar9.hidden = false
        self.Pillar10.hidden = false
        self.Pillar11.hidden = false
        self.Pillar12.hidden = false
        self.Pillar13.hidden = false
        self.Pillar14.hidden = false
        self.Pillar15.hidden = false
        self.Pillar16.hidden = false
        self.Pillar17.hidden = false
        self.Pillar18.hidden = false
        self.Pillar19.hidden = false
        self.Pillar20.hidden = false
        self.Pillar21.hidden = false
        self.Pillar22.hidden = false
        self.Pillar23.hidden = false
        self.Pillar24.hidden = false
        self.Pillar25.hidden = false
        self.Pillar26.hidden = false

        self.PillarTop.hidden = false
        self.PillarTop2.hidden = false
        self.PillarTop3.hidden = false
        self.PillarTop4.hidden = false
        self.PillarTop5.hidden = false
        self.PillarTop6.hidden = false
    }
    
    //Place Pillar at random spot to make the map
    func pillarPlacement(x: CGFloat,y: CGFloat) -> (CGPoint) {
        var PillarNewX: CGFloat
        var PillarNewY: CGFloat
        
        let random: Int = Int(arc4random() % 2)
        
        if random == 1 {
            PillarNewX = x + 39
            PillarNewY = y - 29
            
            if PillarNewX >= 319 {
                PillarNewX = x - 40
                PillarNewY = y - 30
            }
            
        } else {
            PillarNewX = x - 40
            PillarNewY = y - 30
            
            if PillarNewX <= 17 {
                PillarNewX = x + 39
                PillarNewY = y - 29
            }
        }
        let NewPillarCenter = CGPointMake(PillarNewX, PillarNewY)
        return(NewPillarCenter)
    }
    
    //respond the user touches
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if TapsValid == true {
            Score++
            if BallRight == true {
                BallChange = false
            } else {
                BallChange = true
            }
        }
    }
    
    //Controls the ball and pillar movememnt
    func movement(){
        
        self.ScoreLabel.text = String(Score)
        
        BallCenter = self.Ball.center
        Pillar1Center = self.Pillar1.center
        Pillar2Center = self.Pillar2.center
        Pillar3Center = self.Pillar3.center
        Pillar4Center = self.Pillar4.center
        Pillar5Center = self.Pillar5.center
        Pillar6Center = self.Pillar6.center
        Pillar7Center = self.Pillar7.center
        Pillar8Center = self.Pillar8.center
        Pillar9Center = self.Pillar9.center
        Pillar10Center = self.Pillar10.center
        Pillar11Center = self.Pillar11.center
        Pillar12Center = self.Pillar12.center
        Pillar13Center = self.Pillar13.center
        Pillar14Center = self.Pillar14.center
        Pillar15Center = self.Pillar15.center
        Pillar16Center = self.Pillar16.center
        Pillar17Center = self.Pillar17.center
        Pillar18Center = self.Pillar18.center
        Pillar19Center = self.Pillar19.center
        Pillar20Center = self.Pillar20.center
        Pillar21Center = self.Pillar21.center
        Pillar22Center = self.Pillar22.center
        Pillar23Center = self.Pillar23.center
        Pillar24Center = self.Pillar24.center
        Pillar25Center = self.Pillar25.center
        Pillar26Center = self.Pillar26.center
        
        PillarTopCenter = self.PillarTop.center
        PillarTop2Center = self.PillarTop2.center
        PillarTop3Center = self.PillarTop3.center
        PillarTop4Center = self.PillarTop4.center
        PillarTop5Center = self.PillarTop5.center
        PillarTop6Center = self.PillarTop6.center
        
        if BallChange == false {
            BallRight = false
        } else {
            BallRight = true
        }
        
        if BallRight == true {
            Ball.center.x += 6.5
            Ball.center.y -= 0.5
        } else {
            Ball.center.x -= 6.5
            Ball.center.y -= 0.5
        }
        
        Ball.center.y += 0.5
        Pillar1.center.y += 5
        Pillar2.center.y += 5
        Pillar3.center.y += 5
        Pillar4.center.y += 5
        Pillar5.center.y += 5
        Pillar6.center.y += 5
        Pillar7.center.y += 5
        Pillar8.center.y += 5
        Pillar9.center.y += 5
        Pillar10.center.y += 5
        Pillar11.center.y += 5
        Pillar12.center.y += 5
        Pillar13.center.y += 5
        Pillar14.center.y += 5
        Pillar15.center.y += 5
        Pillar16.center.y += 5
        Pillar17.center.y += 5
        Pillar18.center.y += 5
        Pillar19.center.y += 5
        Pillar20.center.y += 5
        Pillar21.center.y += 5
        Pillar22.center.y += 5
        Pillar23.center.y += 5
        Pillar24.center.y += 5
        Pillar25.center.y += 5
        Pillar26.center.y += 5
        
        Pillar1.center = movePillarUp(Pillar1.center.x, floaty: Pillar1.center.y, pillarNumber: 1)
        Pillar2.center = movePillarUp(Pillar2.center.x, floaty: Pillar2.center.y, pillarNumber: 2)
        Pillar3.center = movePillarUp(Pillar3.center.x, floaty: Pillar3.center.y, pillarNumber: 3)
        Pillar4.center = movePillarUp(Pillar4.center.x, floaty: Pillar4.center.y, pillarNumber: 4)
        Pillar5.center = movePillarUp(Pillar5.center.x, floaty: Pillar5.center.y, pillarNumber: 5)
        Pillar6.center = movePillarUp(Pillar6.center.x, floaty: Pillar6.center.y, pillarNumber: 6)
        Pillar7.center = movePillarUp(Pillar7.center.x, floaty: Pillar7.center.y, pillarNumber: 7)
        Pillar8.center = movePillarUp(Pillar8.center.x, floaty: Pillar8.center.y, pillarNumber: 8)
        Pillar9.center = movePillarUp(Pillar9.center.x, floaty: Pillar9.center.y, pillarNumber: 9)
        Pillar10.center = movePillarUp(Pillar10.center.x, floaty: Pillar10.center.y, pillarNumber: 10)
        Pillar11.center = movePillarUp(Pillar11.center.x, floaty: Pillar11.center.y, pillarNumber: 11)
        Pillar12.center = movePillarUp(Pillar12.center.x, floaty: Pillar12.center.y, pillarNumber: 12)
        Pillar13.center = movePillarUp(Pillar13.center.x, floaty: Pillar13.center.y, pillarNumber: 13)
        Pillar14.center = movePillarUp(Pillar14.center.x, floaty: Pillar14.center.y, pillarNumber: 14)
        Pillar15.center = movePillarUp(Pillar15.center.x, floaty: Pillar15.center.y, pillarNumber: 15)
        Pillar16.center = movePillarUp(Pillar16.center.x, floaty: Pillar16.center.y, pillarNumber: 16)
        Pillar17.center = movePillarUp(Pillar17.center.x, floaty: Pillar17.center.y, pillarNumber: 17)
        Pillar18.center = movePillarUp(Pillar18.center.x, floaty: Pillar18.center.y, pillarNumber: 18)
        Pillar19.center = movePillarUp(Pillar19.center.x, floaty: Pillar19.center.y, pillarNumber: 19)
        Pillar20.center = movePillarUp(Pillar20.center.x, floaty: Pillar20.center.y, pillarNumber: 20)
        Pillar21.center = movePillarUp(Pillar21.center.x, floaty: Pillar21.center.y, pillarNumber: 21)
        Pillar22.center = movePillarUp(Pillar22.center.x, floaty: Pillar22.center.y, pillarNumber: 22)
        Pillar23.center = movePillarUp(Pillar23.center.x, floaty: Pillar23.center.y, pillarNumber: 23)
        Pillar24.center = movePillarUp(Pillar24.center.x, floaty: Pillar24.center.y, pillarNumber: 24)
        Pillar25.center = movePillarUp(Pillar25.center.x, floaty: Pillar25.center.y, pillarNumber: 25)
        Pillar26.center = movePillarUp(Pillar26.center.x, floaty: Pillar26.center.y, pillarNumber: 26)
        
        if (((Ball.center.x > PillarTop.center.x - 50) && (Ball.center.x < PillarTop.center.x + 50) &&
            (Ball.center.y > PillarTop.center.y - 45) && (Ball.center.y < PillarTop.center.y + 45)) ||
            ((Ball.center.x > PillarTop2.center.x - 50) && (Ball.center.x < PillarTop2.center.x + 50) &&
            (Ball.center.y > PillarTop2.center.y - 45) && (Ball.center.y < PillarTop2.center.y + 45))  ||
            ((Ball.center.x > PillarTop3.center.x - 50) && (Ball.center.x < PillarTop3.center.x + 50) &&
            (Ball.center.y > PillarTop3.center.y - 45) && (Ball.center.y < PillarTop3.center.y + 45))  ||
            ((Ball.center.x > PillarTop4.center.x - 50) && (Ball.center.x < PillarTop4.center.x + 50) &&
            (Ball.center.y > PillarTop4.center.y - 45) && (Ball.center.y < PillarTop4.center.y + 45))  ||
            ((Ball.center.x > PillarTop5.center.x - 50) && (Ball.center.x < PillarTop5.center.x + 50) &&
            (Ball.center.y > PillarTop5.center.y - 45) && (Ball.center.y < PillarTop5.center.y + 45))  ||
            ((Ball.center.x > PillarTop6.center.x - 50) && (Ball.center.x < PillarTop6.center.x + 50) &&
            (Ball.center.y > PillarTop6.center.y - 45) && (Ball.center.y < PillarTop6.center.y + 45))) {
            
        } else {
            gameOver()
        }
        
        if CGRectIntersectsRect(Ball.frame, Pillar1.frame){
            self.PillarTop.center = CGPointMake(Pillar26.center.x, Pillar26.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar1.center.x, Pillar1.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar2.center.x, Pillar2.center.y - 35)
            self.PillarTop4.center = CGPointMake(Pillar25.center.x, Pillar25.center.y - 35)
            self.PillarTop5.center = CGPointMake(Pillar24.center.x, Pillar24.center.y - 35)
            self.PillarTop6.center = CGPointMake(Pillar23.center.x, Pillar23.center.y - 35)
           
        } else if(CGRectIntersectsRect(Ball.frame, Pillar2.frame)){
            self.PillarTop.center = CGPointMake(Pillar1.center.x, Pillar1.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar2.center.x, Pillar2.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar3.center.x, Pillar3.center.y - 35)
            self.PillarTop4.center = CGPointMake(Pillar26.center.x, Pillar26.center.y - 35)
            self.PillarTop5.center = CGPointMake(Pillar25.center.x, Pillar25.center.y - 35)
            self.PillarTop6.center = CGPointMake(Pillar24.center.x, Pillar24.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar3.frame)){
            self.PillarTop4.hidden = true
            self.PillarTop5.hidden = true
            self.PillarTop6.hidden = true
            self.PillarTop.center = CGPointMake(Pillar2.center.x, Pillar2.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar3.center.x, Pillar3.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar4.center.x, Pillar4.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar4.frame)){
            self.PillarTop.center = CGPointMake(Pillar3.center.x, Pillar3.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar4.center.x, Pillar4.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar5.center.x, Pillar5.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar5.frame)){
            self.PillarTop.center = CGPointMake(Pillar4.center.x, Pillar4.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar5.center.x, Pillar5.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar6.center.x, Pillar6.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar6.frame)){
            self.PillarTop.center = CGPointMake(Pillar5.center.x, Pillar5.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar6.center.x, Pillar6.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar7.center.x, Pillar7.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar7.frame)){
            self.PillarTop.center = CGPointMake(Pillar6.center.x, Pillar6.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar7.center.x, Pillar7.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar8.center.x, Pillar8.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar8.frame)){
            self.PillarTop.center = CGPointMake(Pillar7.center.x, Pillar7.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar8.center.x, Pillar8.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar9.center.x, Pillar9.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar9.frame)){
            self.PillarTop.center = CGPointMake(Pillar8.center.x, Pillar8.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar9.center.x, Pillar9.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar10.center.x, Pillar10.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar10.frame)){
            self.PillarTop.center = CGPointMake(Pillar9.center.x, Pillar9.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar10.center.x, Pillar10.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar11.center.x, Pillar11.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar11.frame)){
            self.PillarTop.center = CGPointMake(Pillar10.center.x, Pillar10.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar11.center.x, Pillar11.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar12.center.x, Pillar12.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar12.frame)){
            self.PillarTop.center = CGPointMake(Pillar11.center.x, Pillar11.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar12.center.x, Pillar12.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar13.center.x, Pillar13.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar13.frame)){
            self.PillarTop.center = CGPointMake(Pillar12.center.x, Pillar12.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar13.center.x, Pillar13.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar14.center.x, Pillar14.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar14.frame)){
            self.PillarTop.center = CGPointMake(Pillar13.center.x, Pillar13.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar14.center.x, Pillar14.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar15.center.x, Pillar15.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar15.frame)){
            self.PillarTop.center = CGPointMake(Pillar14.center.x, Pillar14.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar15.center.x, Pillar15.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar16.center.x, Pillar16.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar16.frame)){
            self.PillarTop.center = CGPointMake(Pillar15.center.x, Pillar15.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar16.center.x, Pillar16.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar17.center.x, Pillar17.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar17.frame)){
            self.PillarTop.center = CGPointMake(Pillar16.center.x, Pillar16.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar17.center.x, Pillar17.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar18.center.x, Pillar18.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar18.frame)){
            self.PillarTop.center = CGPointMake(Pillar17.center.x, Pillar17.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar18.center.x, Pillar18.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar19.center.x, Pillar19.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar19.frame)){
            self.PillarTop.center = CGPointMake(Pillar18.center.x, Pillar18.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar19.center.x, Pillar19.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar20.center.x, Pillar20.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar20.frame)){
            self.PillarTop.center = CGPointMake(Pillar19.center.x, Pillar19.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar20.center.x, Pillar20.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar21.center.x, Pillar21.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar21.frame)){
            self.PillarTop.center = CGPointMake(Pillar20.center.x, Pillar20.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar21.center.x, Pillar21.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar22.center.x, Pillar22.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar22.frame)){
            self.PillarTop.center = CGPointMake(Pillar21.center.x, Pillar21.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar22.center.x, Pillar22.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar23.center.x, Pillar23.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar23.frame)){
            self.PillarTop.center = CGPointMake(Pillar22.center.x, Pillar22.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar23.center.x, Pillar23.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar24.center.x, Pillar24.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar24.frame)){
            self.PillarTop.center = CGPointMake(Pillar23.center.x, Pillar23.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar24.center.x, Pillar24.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar25.center.x, Pillar25.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar25.frame)){
            self.PillarTop.center = CGPointMake(Pillar24.center.x, Pillar24.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar25.center.x, Pillar25.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar26.center.x, Pillar26.center.y - 35)
        } else if(CGRectIntersectsRect(Ball.frame, Pillar26.frame)){
            self.PillarTop.center = CGPointMake(Pillar25.center.x, Pillar25.center.y - 35)
            self.PillarTop2.center = CGPointMake(Pillar26.center.x, Pillar26.center.y - 35)
            self.PillarTop3.center = CGPointMake(Pillar1.center.x, Pillar1.center.y - 35)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Score = 0
        HighScore = defaults.integerForKey("HighScore")
        
        self.GameOver.hidden = true
        self.Retry.hidden = true
        self.ScoreBoard.hidden = true
        self.Ball.hidden = true
        self.Logo.hidden = false
        
        self.Pillar1.hidden = true
        self.Pillar2.hidden = true
        self.Pillar3.hidden = true
        self.Pillar4.hidden = true
        self.Pillar5.hidden = true
        self.Pillar6.hidden = true
        self.Pillar7.hidden = true
        self.Pillar8.hidden = true
        self.Pillar9.hidden = true
        self.Pillar10.hidden = true
        self.Pillar11.hidden = true
        self.Pillar12.hidden = true
        self.Pillar13.hidden = true
        self.Pillar14.hidden = true
        self.Pillar15.hidden = true
        self.Pillar16.hidden = true
        self.Pillar17.hidden = true
        self.Pillar18.hidden = true
        self.Pillar19.hidden = true
        self.Pillar20.hidden = true
        self.Pillar21.hidden = true
        self.Pillar22.hidden = true
        self.Pillar23.hidden = true
        self.Pillar24.hidden = true
        self.Pillar25.hidden = true
        self.Pillar26.hidden = true
        
        self.PillarTop.hidden = true
        self.PillarTop2.hidden = true
        self.PillarTop3.hidden = true
        self.PillarTop4.hidden = true
        self.PillarTop5.hidden = true
        self.PillarTop6.hidden = true
        self.Play.hidden = false
        
        self.ScoreOnBoard.hidden = true
        self.HightestScoreOnBoard.hidden = true
        self.ScoreLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //check if pillar is below screen
    func checkPillarPosition(y: CGFloat) -> (Bool) {
        var low: Bool = false
        if (y > 720) {
            low = true
        }
        return(low)
    }
    
    //move the pillar from bottom to top
    func movePillarUp(floatx: CGFloat, floaty: CGFloat, pillarNumber: Int) -> (CGPoint) {
        var center = CGPointMake(floatx, floaty)
        if checkPillarPosition(floaty) == true {
            switch pillarNumber{
            case 1:
                GameView.sendSubviewToBack(Pillar1)
                center = pillarPlacement(self.Pillar26.center.x, y: self.Pillar26.center.y)
                break
            case 2:
                GameView.sendSubviewToBack(Pillar2)
                center = pillarPlacement(self.Pillar1.center.x, y: self.Pillar1.center.y)
                break
            case 3:
                GameView.sendSubviewToBack(Pillar3)
                center = pillarPlacement(self.Pillar2.center.x, y: self.Pillar2.center.y)
                break
            case 4:
                GameView.sendSubviewToBack(Pillar4)
                center = pillarPlacement(self.Pillar3.center.x, y: self.Pillar3.center.y)
                break
            case 5:
                GameView.sendSubviewToBack(Pillar5)
                center = pillarPlacement(self.Pillar4.center.x, y: self.Pillar4.center.y)
                break
            case 6:
                GameView.sendSubviewToBack(Pillar6)
                center = pillarPlacement(self.Pillar5.center.x, y: self.Pillar5.center.y)
                break
            case 7:
                GameView.sendSubviewToBack(Pillar7)
                center = pillarPlacement(self.Pillar6.center.x, y: self.Pillar6.center.y)
                break
            case 8:
                GameView.sendSubviewToBack(Pillar8)
                center = pillarPlacement(self.Pillar7.center.x, y: self.Pillar7.center.y)
                break
            case 9:
                GameView.sendSubviewToBack(Pillar9)
                center = pillarPlacement(self.Pillar8.center.x, y: self.Pillar8.center.y)
                break
            case 10:
                GameView.sendSubviewToBack(Pillar10)
                center = pillarPlacement(self.Pillar9.center.x, y: self.Pillar9.center.y)
                break
            case 11:
                GameView.sendSubviewToBack(Pillar11)
                center = pillarPlacement(self.Pillar10.center.x, y: self.Pillar10.center.y)
                break
            case 12:
                GameView.sendSubviewToBack(Pillar12)
                center = pillarPlacement(self.Pillar11.center.x, y: self.Pillar11.center.y)
                break
            case 13:
                GameView.sendSubviewToBack(Pillar13)
                center = pillarPlacement(self.Pillar12.center.x, y: self.Pillar12.center.y)
                break
            case 14:
                GameView.sendSubviewToBack(Pillar14)
                center = pillarPlacement(self.Pillar13.center.x, y: self.Pillar13.center.y)
                break
            case 15:
                GameView.sendSubviewToBack(Pillar15)
                center = pillarPlacement(self.Pillar14.center.x, y: self.Pillar14.center.y)
                break
            case 16:
                GameView.sendSubviewToBack(Pillar16)
                center = pillarPlacement(self.Pillar15.center.x, y: self.Pillar15.center.y)
                break
            case 17:
                GameView.sendSubviewToBack(Pillar17)
                center = pillarPlacement(self.Pillar16.center.x, y: self.Pillar16.center.y)
                break
            case 18:
                GameView.sendSubviewToBack(Pillar18)
                center = pillarPlacement(self.Pillar17.center.x, y: self.Pillar17.center.y)
                break
            case 19:
                GameView.sendSubviewToBack(Pillar19)
                center = pillarPlacement(self.Pillar18.center.x, y: self.Pillar18.center.y)
                break
            case 20:
                GameView.sendSubviewToBack(Pillar20)
                center = pillarPlacement(self.Pillar19.center.x, y: self.Pillar19.center.y)
                break
            case 21:
                GameView.sendSubviewToBack(Pillar21)
                center = pillarPlacement(self.Pillar20.center.x, y: self.Pillar20.center.y)
                break
            case 22:
                GameView.sendSubviewToBack(Pillar22)
                center = pillarPlacement(self.Pillar21.center.x, y: self.Pillar21.center.y)
                break
            case 23:
                GameView.sendSubviewToBack(Pillar23)
                center = pillarPlacement(self.Pillar22.center.x, y: self.Pillar22.center.y)
                break
            case 24:
                GameView.sendSubviewToBack(Pillar24)
                center = pillarPlacement(self.Pillar23.center.x, y: self.Pillar23.center.y)
                break
            case 25:
                GameView.sendSubviewToBack(Pillar25)
                center = pillarPlacement(self.Pillar24.center.x, y: self.Pillar24.center.y)
                break
            case 26:
                GameView.sendSubviewToBack(Pillar26)
                center = pillarPlacement(self.Pillar25.center.x, y: self.Pillar25.center.y)
                 break
            default:
                break
            }
        }
        return(center)
    }
    
    //change to manual layout
    override func viewDidLayoutSubviews() {
        if let newBallCenter = BallCenter {
            self.Ball.center = newBallCenter
        }
        if let newPillar1Center = Pillar1Center {
            self.Pillar1.center = newPillar1Center
        }
        if let newPillar2Center = Pillar2Center {
            self.Pillar2.center = newPillar2Center
        }
        if let newPillar3Center = Pillar3Center {
            self.Pillar3.center = newPillar3Center
        }
        if let newPillar4Center = Pillar4Center {
            self.Pillar4.center = newPillar4Center
        }
        if let newPillar5Center = Pillar5Center {
            self.Pillar5.center = newPillar5Center
        }
        if let newPillar6Center = Pillar6Center {
            self.Pillar6.center = newPillar6Center
        }
        if let newPillar7Center = Pillar7Center {
            self.Pillar7.center = newPillar7Center
        }
        if let newPillar8Center = Pillar8Center {
            self.Pillar8.center = newPillar8Center
        }
        if let newPillar9Center = Pillar9Center {
            self.Pillar9.center = newPillar9Center
        }
        if let newPillar10Center = Pillar10Center {
            self.Pillar10.center = newPillar10Center
        }
        if let newPillar11Center = Pillar11Center {
            self.Pillar11.center = newPillar11Center
        }
        if let newPillar12Center = Pillar12Center {
            self.Pillar12.center = newPillar12Center
        }
        if let newPillar13Center = Pillar13Center {
            self.Pillar13.center = newPillar13Center
        }
        if let newPillar14Center = Pillar14Center {
            self.Pillar14.center = newPillar14Center
        }
        if let newPillar15Center = Pillar15Center {
            self.Pillar15.center = newPillar15Center
        }
        if let newPillar16Center = Pillar16Center {
            self.Pillar16.center = newPillar16Center
        }
        if let newPillar17Center = Pillar17Center {
            self.Pillar17.center = newPillar17Center
        }
        if let newPillar18Center = Pillar18Center {
            self.Pillar18.center = newPillar18Center
        }
        if let newPillar19Center = Pillar19Center {
            self.Pillar19.center = newPillar19Center
        }
        if let newPillar20Center = Pillar20Center {
            self.Pillar20.center = newPillar20Center
        }
        if let newPillar21Center = Pillar21Center {
            self.Pillar21.center = newPillar21Center
        }
        if let newPillar22Center = Pillar22Center {
            self.Pillar22.center = newPillar22Center
        }
        if let newPillar23Center = Pillar23Center {
            self.Pillar23.center = newPillar23Center
        }
        if let newPillar24Center = Pillar24Center {
            self.Pillar24.center = newPillar24Center
        }
        if let newPillar25Center = Pillar25Center {
            self.Pillar25.center = newPillar25Center
        }
        if let newPillar26Center = Pillar26Center {
            self.Pillar26.center = newPillar26Center
        }
        if let newPillarTopCenter = PillarTopCenter {
            self.PillarTop.center = newPillarTopCenter
        }
        if let newPillarTop2Center = PillarTop2Center {
            self.PillarTop2.center = newPillarTop2Center
        }
        if let newPillarTop3Center = PillarTop3Center {
            self.PillarTop3.center = newPillarTop3Center
        }
        if let newPillarTop4Center = PillarTop4Center {
            self.PillarTop4.center = newPillarTop4Center
        }
        if let newPillarTop5Center = PillarTop5Center {
            self.PillarTop5.center = newPillarTop5Center
        }
        if let newPillarTop6Center = PillarTop6Center {
            self.PillarTop6.center = newPillarTop6Center
        }
    }
    
    //handles game over situations
    func gameOver() {
        TapsValid = false
        timer.invalidate()
        ScoreLabel.hidden = true
        GameOver.hidden = false
        Retry.hidden = false
        ScoreBoard.hidden = false
        Logo.hidden = true
        
        if Score > HighScore {
            HighScore = Score
        }
        defaults.setInteger(HighScore, forKey: "HighScore")
        self.ScoreOnBoard.text = String(Score)
        self.HightestScoreOnBoard.text = String(HighScore)
        
        ScoreOnBoard.hidden = false
        HightestScoreOnBoard.hidden = false
        
        GameView.sendSubviewToBack(Pillar1)
        GameView.sendSubviewToBack(Pillar2)
        GameView.sendSubviewToBack(Pillar3)
        GameView.sendSubviewToBack(Pillar4)
        GameView.sendSubviewToBack(Pillar5)
        GameView.sendSubviewToBack(Pillar6)
        GameView.sendSubviewToBack(Pillar7)
        GameView.sendSubviewToBack(Pillar8)
        GameView.sendSubviewToBack(Pillar9)
        GameView.sendSubviewToBack(Pillar10)
        GameView.sendSubviewToBack(Pillar11)
        GameView.sendSubviewToBack(Pillar12)
        GameView.sendSubviewToBack(Pillar13)
        GameView.sendSubviewToBack(Pillar14)
        GameView.sendSubviewToBack(Pillar15)
        GameView.sendSubviewToBack(Pillar16)
        GameView.sendSubviewToBack(Pillar17)
        GameView.sendSubviewToBack(Pillar18)
        GameView.sendSubviewToBack(Pillar19)
        GameView.sendSubviewToBack(Pillar20)
        GameView.sendSubviewToBack(Pillar21)
        GameView.sendSubviewToBack(Pillar22)
        GameView.sendSubviewToBack(Pillar23)
        GameView.sendSubviewToBack(Pillar24)
        GameView.sendSubviewToBack(Pillar25)
        GameView.sendSubviewToBack(Pillar26)
    }


}

