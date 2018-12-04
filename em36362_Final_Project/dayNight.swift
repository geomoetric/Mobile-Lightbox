//
//  dayNight.swift
//  em36362_Final_Project
//
//  Created by Eric Moe on 12/3/18.
//  Copyright © 2018 Eric Moe. All rights reserved.
//

import Foundation
import UIKit

class dayNight: UIViewController {
    
    let gradient = CAGradientLayer()
    var gradientSet = [[CGColor]]()
    var currentGradient: Int = 0
    
    let g00 = UIColor(red:0.15, green:0.12, blue:0.33, alpha:1.0).cgColor
    let g01 = UIColor(red:0.15, green:0.19, blue:0.43, alpha:1.0).cgColor
    let g02 = UIColor(red:0.15, green:0.23, blue:0.50, alpha:1.0).cgColor
    let g03 = UIColor(red:0.05, green:0.33, blue:0.65, alpha:1.0).cgColor
    let g04 = UIColor(red:0.33, green:0.35, blue:0.66, alpha:1.0).cgColor
    let g05 = UIColor(red:0.65, green:0.38, blue:0.60, alpha:1.0).cgColor
    let g06 = UIColor(red:0.94, green:0.57, blue:0.63, alpha:1.0).cgColor
    let g07 = UIColor(red:0.98, green:0.76, blue:0.70, alpha:1.0).cgColor
    let g08 = UIColor(red:0.98, green:0.93, blue:0.90, alpha:1.0).cgColor
    let g09 = UIColor(red:0.89, green:0.94, blue:0.96, alpha:1.0).cgColor
    let g10 = UIColor(red:0.85, green:0.91, blue:0.97, alpha:1.0).cgColor
    let g11 = UIColor(red:0.70, green:0.79, blue:0.91, alpha:1.0).cgColor
    let g12 = UIColor(red:0.56, green:0.73, blue:0.89, alpha:1.0).cgColor
    let g13 = UIColor(red:0.49, green:0.71, blue:0.89, alpha:1.0).cgColor
    let g14 = UIColor(red:0.61, green:0.63, blue:0.82, alpha:1.0).cgColor
    let g15 = UIColor(red:0.76, green:0.70, blue:0.85, alpha:1.0).cgColor
    let g16 = UIColor(red:0.87, green:0.64, blue:0.76, alpha:1.0).cgColor
    let g17 = UIColor(red:0.86, green:0.51, blue:0.47, alpha:1.0).cgColor
    let g18 = UIColor(red:0.97, green:0.56, blue:0.20, alpha:1.0).cgColor
    let g19 = UIColor(red:0.95, green:0.44, blue:0.13, alpha:1.0).cgColor
    let g20 = UIColor(red:0.89, green:0.18, blue:0.15, alpha:1.0).cgColor
    let g21 = UIColor(red:0.35, green:0.17, blue:0.27, alpha:1.0).cgColor
    let g22 = UIColor(red:0.23, green:0.15, blue:0.14, alpha:1.0).cgColor
    let g23 = UIColor(red:0.14, green:0.10, blue:0.10, alpha:1.0).cgColor
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        gradientSet.append([g00, g01])
        gradientSet.append([g01, g02])
        gradientSet.append([g02, g03])
        gradientSet.append([g03, g04])
        gradientSet.append([g04, g05])
        gradientSet.append([g05, g06])
        gradientSet.append([g06, g07])
        gradientSet.append([g07, g08])
        gradientSet.append([g08, g09])
        gradientSet.append([g09, g10])
        gradientSet.append([g10, g11])
        gradientSet.append([g11, g12])
        gradientSet.append([g12, g13])
        gradientSet.append([g13, g14])
        gradientSet.append([g14, g15])
        gradientSet.append([g15, g16])
        gradientSet.append([g16, g17])
        gradientSet.append([g17, g18])
        gradientSet.append([g18, g19])
        gradientSet.append([g19, g20])
        gradientSet.append([g20, g21])
        gradientSet.append([g21, g22])
        gradientSet.append([g22, g23])
        gradientSet.append([g23, g00])

        gradient.frame = self.view.bounds
        gradient.colors = gradientSet[currentGradient]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:0, y:1)
        gradient.drawsAsynchronously = true
        self.view.layer.addSublayer(gradient)
        
        animateGradient()
        
    }
    
    func animateGradient() {
        print("animate")
        if currentGradient < 23 {
            currentGradient += 1
            print("continue")
        } else {
            currentGradient = 0
            print("stop")
        }
        
        let gradientChangeAnimation = CABasicAnimation(keyPath: "colors")
        gradientChangeAnimation.duration = 5.0
        print("test")

        gradientChangeAnimation.toValue = gradientSet[currentGradient]
        gradientChangeAnimation.fillMode = kCAFillModeForwards
        gradientChangeAnimation.isRemovedOnCompletion = false
        gradient.add(gradientChangeAnimation, forKey: "colorChange")
    }
    
}

extension dayNight: CAAnimationDelegate {
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if flag {
            gradient.colors = gradientSet[currentGradient]
            animateGradient()
        }
    }
}

