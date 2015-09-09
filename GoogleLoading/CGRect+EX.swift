//
//  CGRect+EX.swift
//  Zhaoshi365
//
//  Created by C on 15/8/28.
//  Copyright (c) 2015年 YoungKook. All rights reserved.
//

import UIKit


extension UIView {
    var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    var top: CGFloat {
        get {
            return y
        }
        set {
            y = newValue
        }
    }
    
    var bottom: CGFloat {
        get {
            return y + height
        }
    }
    
    var left: CGFloat {
        get {
            return x
        }
    }
    
    var right: CGFloat {
        get {
            return x + width
        }
    }
    
    var midX: CGFloat {
        get {
            return self.x + self.width / 2
        }
    }
    
    var midY: CGFloat {
        get {
            return self.y + self.height / 2
        }
    }
    
    
//    var center: CGPoint {
//        get {
//            return CGPointMake(self.midX, self.midY)
//        }
//        set {
//            self.frame = CGRectMake(newValue.x - width / 2, newValue.y - height / 2, width, height)
//        }
//    }
    
}
//extension CGRect {
//    var x: CGFloat {
//        get {
//            return self.origin.x
//        }
//        set {
//            self = CGRectMake(newValue, self.minY, self.width, self.height)
//        }
//    }
//    
//    var y: CGFloat {
//        get {
//            return self.origin.y
//        }
//        set {
//            self = CGRectMake(self.x, newValue, self.width, self.height)
//        }
//    }
//    
//    var width: CGFloat {
//        get {
//            return self.size.width
//        }
//        set {
//            self = CGRectMake(self.x, self.width, newValue, self.height)
//        }
//    }
//    
//    var height: CGFloat {
//        get {
//            return self.size.height
//        }
//        set {
//            self = CGRectMake(self.x, self.minY, self.width, newValue)
//        }
//    }
//    
//    
//    var top: CGFloat {
//        get {
//            return self.origin.y
//        }
//        set {
//            y = newValue
//        }
//    }
//    
//    var bottom: CGFloat {
//        get {
//            return self.origin.y + self.size.height
//        }
//        set {
//            self = CGRectMake(x, newValue - height, width, height)
//        }
//    }
//    
//    var left: CGFloat {
//        get {
//            return self.origin.x
//        }
//        set {
//            self.x = newValue
//        }
//    }
//    
//    var right: CGFloat {
//        get {
//            return x + width
//        }
//        set {
//            self = CGRectMake(newValue - width, y, width, height)
//        }
//    }
//    
//    
//    var midX: CGFloat {
//        get {
//            return self.x + self.width / 2
//        }
//        set {
//            self = CGRectMake(newValue - width / 2, y, width, height)
//        }
//    }
//    
//    var midY: CGFloat {
//        get {
//            return self.y + self.height / 2
//        }
//        set {
//            self = CGRectMake(x, newValue - height / 2, width, height)
//        }
//    }
//    
//    
//    var center: CGPoint {
//        get {
//            return CGPointMake(self.midX, self.midY)
//        }
//        set {
//            self = CGRectMake(newValue.x - width / 2, newValue.y - height / 2, width, height)
//        }
//    }
//    
//}