//
//  DragView.swift
//  AppTest1
//
//  Created by Lucas Calvert on 9/6/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa

class DragView: NSView{
    
    override func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation {
        print("Dragging Entered");
        
        let test:NSDragOperation = NSDragOperation.generic;
        
        return test;
    }
    
    
    override func draggingExited(_ sender: NSDraggingInfo?) {
        print("Dragging Exited");
    }
    
    
    
}
