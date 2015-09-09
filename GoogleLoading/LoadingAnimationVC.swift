//
//  LoadingAnimationVC.swift
//  GoogleLoading
//
//  Created by C on 15/9/9.
//  Copyright (c) 2015年 YoungKook. All rights reserved.
//

import UIKit

class LoadingAnimationVC: UIViewController {

    @IBOutlet weak var loadingView: UIView!
    let shapeLayer = CAShapeLayer()
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        shapeLayer.strokeColor = UIColor.whiteColor().CGColor
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.lineWidth = 7
        
        let radius = loadingView.height/2 * 0.8
        shapeLayer.path = UIBezierPath(ovalInRect: CGRect(x: loadingView.width/2 - radius, y: loadingView.height/2 - radius, width: radius * 2, height: radius * 2)).CGPath
        loadingView.layer.addSublayer(shapeLayer)
    
        shapeLayer.strokeEnd = 0.8
        shapeLayer.lineCap = kCALineJoinRound
        beginAnimation()

    }
    
    
    func beginAnimation() {
        let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimation.fromValue = -0.7
        strokeStartAnimation.toValue = 1
        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.fromValue = 0
        strokeEndAnimation.toValue = 1
        
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 2
        animationGroup.repeatCount = HUGE
        animationGroup.animations = [strokeStartAnimation, strokeEndAnimation]
        shapeLayer.addAnimation(animationGroup, forKey: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
