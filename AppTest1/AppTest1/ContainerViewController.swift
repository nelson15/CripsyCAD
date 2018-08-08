//
//  ContainerViewController.swift
//  AppTest1
//
//  Created by Lucas Calvert on 7/30/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa

class ContainerViewController: NSViewController, NSWindowDelegate {

    
    // Initializing a default wrapper
    var wrapper: OCCWrapper!;
    var mousePosition = CGPoint(x: 0, y: 0);
    //var ctrlButtonPressed: Bool = false;
    //var window = UpdatedWindowController();
    
    //////// ROTATING WITH A MOUSE DRAG
   
    /*
    override func mouseDragged(with event: NSEvent) {
        
        //capture the change in mouse position
        let xChange = event.deltaX;
        let yChange = event.deltaY;
        
        //update the view occordingly
        importantData.shared.theWrapper.rotateX(Int32(xChange));
        importantData.shared.theWrapper.rotateY(Int32(yChange * -1));
    }
 */
    
    
    // LEFT CLICK TO SELECT A SIDE
    override func mouseDown(with event: NSEvent) {
        if importantData.shared.initBool == true{ //making sure the view has been initialized
            
           // let locWindow = event.locationInWindow;
            
            //let locView =
            //let xLocWindow = event.locationInWindow.x;
           // let yLocWindow = event.locationInWindow.y;
            
            //Get mouse coordinates
            print("Mouse Event: \(event.locationInWindow.x)  \(event.locationInWindow.y)")
            importantData.shared.theWrapper.selectPoint(Int32(event.locationInWindow.x) - 10, 480 - (Int32(event.locationInWindow.y) )) //subtract y from window size
            
    
            
        };
    };
 
    
    
    override func rightMouseDragged(with event: NSEvent) {
       
        if importantData.shared.initBool == true{
        
            //capture cahnge in mouse position while dragging with right mouse button
            let xChange = event.deltaX;
            let yChange = event.deltaY;
        
            //update the view accordingly
        
    
            //If the control key is pressed, orbit the view
            if Int32(event.modifierFlags.rawValue) == 262145{
                importantData.shared.theWrapper.rotateX(Int32(xChange));
                importantData.shared.theWrapper.rotateY(Int32(yChange * -1));
            } else{
                //otherwise, pan the view
                importantData.shared.theWrapper.pan(Int32(xChange), Int32(yChange * -1));
            };
        };
    }
    
    
    ////////// ZOOMING WITH SCROLL WHEEL
    override func scrollWheel(with event: NSEvent) {
        if importantData.shared.initBool == true{
            //capture the mouse scrolling amount
            let zoom = event.scrollingDeltaY;
            //print(zoom)
            //update the view accordinqly
            //if zoom<10{
            importantData.shared.theWrapper.zoom(Float32(zoom/300 + 1));
            //};
        };
    };
    

 

   
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer = true;
        wrapper = OCCWrapper.init(view: self.view);
        //wrapper.make_donut();
        importantData.shared.theWrapper = wrapper; // set the singleton wrapper to the correct wrapper;
    };
    
    override func viewDidAppear() {
        
        //Redraw the view to make sure it is sized correctly
         //Redraw();
    }
    
    
}
