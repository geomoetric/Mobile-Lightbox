//
//  night.swift
//  em36362_Final_Project
//
//  Created by Eric Moe on 11/28/18.
//  Copyright © 2018 Eric Moe. All rights reserved.
//

import Foundation
import UIKit
class dayNight2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [
            UIColor(red:0.15, green:0.12, blue:0.33, alpha:1.0).cgColor,
            UIColor(red:0.15, green:0.19, blue:0.43, alpha:1.0).cgColor,
            UIColor(red:0.15, green:0.23, blue:0.50, alpha:1.0).cgColor,
            UIColor(red:0.05, green:0.33, blue:0.65, alpha:1.0).cgColor,
            UIColor(red:0.33, green:0.35, blue:0.66, alpha:1.0).cgColor,
            UIColor(red:0.65, green:0.38, blue:0.60, alpha:1.0).cgColor,
            UIColor(red:0.94, green:0.57, blue:0.63, alpha:1.0).cgColor,
            UIColor(red:0.98, green:0.76, blue:0.70, alpha:1.0).cgColor,
            UIColor(red:0.98, green:0.93, blue:0.90, alpha:1.0).cgColor,
            UIColor(red:0.89, green:0.94, blue:0.96, alpha:1.0).cgColor,
            UIColor(red:0.85, green:0.91, blue:0.97, alpha:1.0).cgColor,
            UIColor(red:0.70, green:0.79, blue:0.91, alpha:1.0).cgColor,
            UIColor(red:0.56, green:0.73, blue:0.89, alpha:1.0).cgColor,
            UIColor(red:0.49, green:0.71, blue:0.89, alpha:1.0).cgColor,
            UIColor(red:0.61, green:0.63, blue:0.82, alpha:1.0).cgColor,
            UIColor(red:0.76, green:0.70, blue:0.85, alpha:1.0).cgColor,
            UIColor(red:0.87, green:0.64, blue:0.76, alpha:1.0).cgColor,
            UIColor(red:0.86, green:0.51, blue:0.47, alpha:1.0).cgColor,
            UIColor(red:0.97, green:0.56, blue:0.20, alpha:1.0).cgColor,
            UIColor(red:0.95, green:0.44, blue:0.13, alpha:1.0).cgColor,
            UIColor(red:0.89, green:0.18, blue:0.15, alpha:1.0).cgColor,
            UIColor(red:0.35, green:0.17, blue:0.27, alpha:1.0).cgColor,
            UIColor(red:0.23, green:0.15, blue:0.14, alpha:1.0).cgColor,
            UIColor(red:0.14, green:0.10, blue:0.10, alpha:1.0).cgColor
            
        ]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:0, y:1)
        self.view.layer.addSublayer(gradient)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

