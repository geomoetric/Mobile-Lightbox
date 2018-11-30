//
//  night.swift
//  em36362_Final_Project
//
//  Created by Eric Moe on 11/28/18.
//  Copyright © 2018 Eric Moe. All rights reserved.
//

import Foundation
import UIKit
class night: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [
            UIColor(red:0.06, green:0.05, blue:0.16, alpha:1.0).cgColor,
            UIColor(red:0.19, green:0.17, blue:0.39, alpha:1.0).cgColor
            
        ]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:0, y:1)
        self.view.layer.addSublayer(gradient)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

