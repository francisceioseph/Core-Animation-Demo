//
//  ViewController.swift
//  demo-animation
//
//  Created by Francisco José A. C. Souza on 20/04/15.
//  Copyright (c) 2015 Francisco José A. C. Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square: UIView!
    var view1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view1 = UIView(frame: square.bounds)
        view1.backgroundColor = UIColor.greenColor()
        square.addSubview(view1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func move(sender: UIButton) {
        
//        UIView.animateWithDuration(1.0,
//            delay: 0.0,
//            options: (UIViewAnimationOptions.CurveEaseOut | UIViewAnimationOptions.Autoreverse),
//            animations: {
//                () -> Void in
//                self.square.frame = CGRectOffset(self.square.frame, 0.0, 100.0)
//                self.square.alpha = 0
//            },
//            completion:{
//                (finished) -> Void in
//                
//                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
//                    self.square.alpha = 1.0
//                }, completion: nil)
//                
//            })
        
        
        UIView.animateWithDuration(2.0,
            delay: 0.0,
            usingSpringWithDamping: 0.3,
            initialSpringVelocity: 37.0,
            options: UIViewAnimationOptions.CurveEaseInOut,
            animations: { () -> Void in
                self.square.frame = CGRectOffset(self.square.frame, 0.0, 100.0)
            },
            completion: nil)
        
//        UIView.animateWithDuration(1.0, animations: {
//            () -> Void in
//            self.square.frame = CGRectOffset(self.square.frame, 0.0, 100.0)
//        })
    }

    @IBAction func change(sender: UIButton) {
//        UIView.transitionWithView(self.square, duration: 0.60, options: UIViewAnimationOptions.TransitionCurlUp, animations: { () -> Void in
////            self.square.alpha = 0
//        }, completion: nil)
        let view2 = UIView(frame: self.square.bounds)
        
        square.addSubview(view2)
        
        view2.backgroundColor = UIColor.blueColor()
        
        UIView.transitionFromView(view1,
            toView: view2,
            duration: 1.0,
            options: .TransitionCurlUp,
            completion: nil)
    }
    
    @IBAction func rotate(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            () -> Void in
            self.square.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
        })
    }
    
    @IBAction func hide(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            () -> Void in
            self.square.alpha = 0.0
        })
    }
    
    @IBAction func color(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            () -> Void in
            self.square.backgroundColor = UIColor.blueColor()
        })
    }
}

