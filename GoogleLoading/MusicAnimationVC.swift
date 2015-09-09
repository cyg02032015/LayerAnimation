//
//  MusicAnimationVC.swift
//  GoogleLoading
//
//  Created by C on 15/9/9.
//  Copyright (c) 2015年 YoungKook. All rights reserved.
//

import UIKit

class MusicAnimationVC: UIViewController {

    @IBOutlet weak var musicView: UIView!
    @IBOutlet weak var loadingView: UIView!
    let rectAngle = CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()

        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.bounds = musicView.bounds
        replicatorLayer.anchorPoint = CGPointZero
//        replicatorLayer.backgroundColor = UIColor.lightGrayColor().CGColor
        replicatorLayer.instanceCount = 3
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(40, 0, 0)
        replicatorLayer.instanceDelay = 0.5
        replicatorLayer.masksToBounds = true
        musicView.layer.addSublayer(replicatorLayer)
    
//        let rectAngle = CALayer()
        rectAngle.bounds = CGRect(x: 0, y: 0, width: 30, height: 90)
        rectAngle.anchorPoint = CGPoint(x: 0, y: 0)
        rectAngle.position = CGPoint(x: 10, y: 110)
        rectAngle.cornerRadius = 2
        rectAngle.backgroundColor = UIColor.whiteColor().CGColor
        replicatorLayer.addSublayer(rectAngle)
        beginAnimation()
    }
    
    func beginAnimation() {
        let moveRect = CABasicAnimation(keyPath: "position.y")
        moveRect.toValue = rectAngle.position.y - 50
        moveRect.duration = 1
        moveRect.autoreverses = true
        moveRect.repeatCount = HUGE
        rectAngle.addAnimation(moveRect, forKey: nil)
    }
}
