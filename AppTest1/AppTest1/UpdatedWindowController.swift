//
//  UpdatedWindowController.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/5/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Foundation
import Cocoa


class UpdatedWindowController: NSWindow {
    
    var oPressed: Bool = false;
    
    override func keyDown(with event: NSEvent) {
        if event.keyCode == 31{
            oPressed = true;
        }
    }
    
    override func keyUp(with event: NSEvent) {
        if event.keyCode == 31{
            oPressed = false;
        }
    }
    
    
    
}
