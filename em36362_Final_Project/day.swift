//
//  night.swift
//  em36362_Final_Project
//
//  Created by Eric Moe on 11/28/18.
//  Copyright © 2018 Eric Moe. All rights reserved.
//

import Foundation
import UIKit
class day: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [
            UIColor(red:0.16, green:0.50, blue:0.73, alpha:1.0).cgColor,
            UIColor(red:0.43, green:0.84, blue:0.98, alpha:1.0).cgColor,
            UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0).cgColor
            
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

