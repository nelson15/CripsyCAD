//
//  plusButton.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/24/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa
import AppKit
import Foundation

class plusButton: NSButton {

    @IBInspectable var fillColor: CGColor = Colors.lightBlue;
    @IBInspectable var cornerRadius: CGFloat = 0;
    @IBInspectable var plusH: CGFloat = 0;
    @IBInspectable var plusPathColor: NSColor = NSColor.init(cgColor: Colors.black)!;
    @IBInspectable var plusOrMinus: Int = 1; //0 for minus, 1 for plus
    
    
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        layer?.cornerRadius = cornerRadius;
        layer?.backgroundColor = fillColor;
        
       // var plusH: CGFloat = 4.0;
        let plusW: CGFloat = min(bounds.height,bounds.width) * 0.6;
        
        let plusPath = NSBezierPath();
        plusPath.lineWidth = plusH;
        
        //Defining horizontal line
        plusPath.move(to: CGPoint(x: bounds.width/2 + plusW/2 + 0.5, y: bounds.height/2 + 0.5));
        plusPath.line(to: CGPoint(x: bounds.width/2 - plusW/2 + 0.5, y: bounds.height/2 + 0.5));
        
        
        if plusOrMinus == 1{
            //Defining vertical line
            plusPath.move(to: CGPoint(x: bounds.width/2 + 0.5, y: bounds.height/2 + plusW/2 + 0.5));
            plusPath.line(to: CGPoint(x: bounds.width/2 + 0.5, y: bounds.height/2 - plusW/2 + 0.5));
        };
        
        plusPathColor.setStroke();
        plusPath.stroke();
        
    };
    
    override func updateLayer() {
        if self.isHighlighted{
            print("HELLO")
        };
    };
    
    
    
    
};
