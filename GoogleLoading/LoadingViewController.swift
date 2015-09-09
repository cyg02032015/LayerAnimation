//
//  ViewController.swift
//  GoogleLoading
//
//  Created by C on 15/9/9.
//  Copyright (c) 2015年 YoungKook. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var loadingView: UIView!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        beginAnimation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUI()
        
        
    }

    func setupUI() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.whiteColor().CGColor
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.lineWidth = 8
        
        let radius = loadingView.height/2 * 0.8
        shapeLayer.path = UIBezierPath(ovalInRect: CGRect(x: loadingView.width/2 - radius, y: loadingView.height/2 - radius, width: radius*2, height: radius*2)).CGPath
        loadingView.layer.addSublayer(shapeLayer)
        
        shapeLayer.strokeEnd = 0.4
        shapeLayer.lineCap = kCALineJoinRound
        
    }
    
    
    
    func beginAnimation() {
        let rotate = CABasicAnimation(keyPath: "transform.rotation")
        rotate.duration = 1.5
        rotate.fromValue = 0
        rotate.toValue = 2 * M_PI
//        rotate.toValue = 1
        rotate.repeatCount = HUGE
        loadingView.layer.addAnimation(rotate, forKey: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

