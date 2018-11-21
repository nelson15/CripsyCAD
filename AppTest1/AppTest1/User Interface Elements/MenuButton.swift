//
//  MenuButton.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/24/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa
import AppKit
import Foundation

class MenuButton: NSButton {
    
    @IBInspectable var fillColor0: CGColor = Colors.lightBlue
    @IBInspectable var fillColor1: CGColor = Colors.darkGrey;
    @IBInspectable var cornerRadius: CGFloat = 0;
    @IBInspectable var plusH: CGFloat = 0;
    @IBInspectable var plusPathColor: NSColor = NSColor.init(cgColor: Colors.black)!;
    @IBInspectable var titleOrItem: Int = 1; //0 for minus, 1 for plus
    
    
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        //setting button shape
        layer?.cornerRadius = cornerRadius;
        
        //setting color - 0 if main header button, 1 if sub option
        if titleOrItem == 0{
            layer?.backgroundColor = fillColor0;
        } else if titleOrItem == 1{
            layer?.backgroundColor = fillColor1;
        };
        
        
    };
    
    
};
