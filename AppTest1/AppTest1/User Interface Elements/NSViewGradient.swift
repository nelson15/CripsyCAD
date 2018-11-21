//
//  NSViewGradient.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/3/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Foundation
import AppKit


extension NSView{
  
    func setGradientBackground(colorOne: CGColor, colorTwo: CGColor){
      
        let gradientLayer = CAGradientLayer();
        gradientLayer.frame = bounds;
        gradientLayer.colors = [colorOne, colorTwo];
        gradientLayer.locations = [0.0, 1.0];
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0);
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0);
        
        layer?.insertSublayer(gradientLayer, at: 0);
    
        
    };
    
};
