//
//  DragView.swift
//  AppTest1
//
//  Created by Lucas Calvert on 9/6/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa

<<<<<<< HEAD
class DragView: NSView{
    
    override func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation {
        print("Dragging Entered");
        
        let test:NSDragOperation = NSDragOperation.generic;
        
        return test;
    }
    
    
    override func draggingExited(_ sender: NSDraggingInfo?) {
        print("Dragging Exited");
    }
    
    
    
=======
class DragView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
>>>>>>> f568e840c11f875289ad89a43c1546b8d03fc0a5
}
