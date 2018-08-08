//
//  ViewController.swift
//  AppTest1
//
//  Created by Lucas Calvert on 7/30/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa
import AppKit



class ViewController: NSViewController {
    
    ////////////////////////
    // Defining Outlets
    
    @IBOutlet weak var InstructionsLabel: NSTextFieldCell!
    
   
    ////////////////////////
    
    

    
    
    // Instantiating a Container View Controller in order to interact with the graphics view
    var CView = ContainerViewController();
    
    // Defining variables for the current angles of rotation of the object - DEGREES
    var angleX: Int32 = 0;
    var angleY: Int32 = 0;
    var angleZ: Int32 = 0;
    let defaultRotationValue = 10; //degrees
    var zoomVal: Int32 = 0; //current zoom value
    
    //Variables to keep track of button presses
    var donutButtonPressed = false;
    var fileButtonPressed = false;
    
    
   
    
    

    
    
    /////////////////////////////////
    // Initialization Options
    
    @IBAction func makeADonut(_ sender: NSButton) {
        
        if donutButtonPressed == false{
        importantData.shared.theWrapper.make_donut();
            donutButtonPressed = true;
            fileButtonPressed = false;
        };
            importantData.shared.theWrapper.redraw();
        
        
        // set the intializer bool value to true, since the window has been initialized
        importantData.shared.initBool = true;
    };

    
    @IBAction func makeFromFile(_ sender: NSButton) {
        
        
        
        if fileButtonPressed == false{
       // importantData.shared.theWrapper.makeFromFile();
        importantData.shared.theWrapper.makeFromFile();
        fileButtonPressed = true;
            donutButtonPressed = false;
        };
        importantData.shared.theWrapper.redraw();
        
        // set the intializer bool value to true, since the window has been initialized
        importantData.shared.initBool = true;
    }
    
     /////////////////////////////////
    
    
    ///////////////////////////////
    // ZOOM FUNCTIONS
    @IBAction func zoomIn(_ sender: NSButton) {
        if importantData.shared.initBool == true{
            importantData.shared.theWrapper.zoom(1.1)
        }
    }
    
    @IBAction func zoomOut(_ sender: NSButton) {
        if importantData.shared.initBool == true{
            importantData.shared.theWrapper.zoom(0.9)
        }
    }
    ///////////////////////////////
    
    
    /////////////////////////////////
    // ROTATION FUNCTIONS
    @IBAction func rotateXvc(_ sender: NSSlider) {
        if importantData.shared.initBool == true{
            let current: Int32 = sender.intValue;
            let diff = (current-angleX);
            importantData.shared.theWrapper.rotateX(diff)
            angleX = current; //updating the current angle
            print("In VC: diff = \(diff), angleX = \(angleX)")
        }
        
    };
    
    @IBAction func rotateYvc(_ sender: NSSlider) {
        if importantData.shared.initBool == true{
            let current: Int32 = sender.intValue;
            let diff = (current-angleY);
            importantData.shared.theWrapper.rotateY(diff)
            angleY = current; //updating the current angle
            print("In VC: diff = \(diff), angleY = \(angleY)")
        }
    };
    
    @IBAction func rotateZvc(_ sender: NSSlider) {
        if importantData.shared.initBool == true{
            let current: Int32 = sender.intValue;
            let diff = (current-angleZ);
            importantData.shared.theWrapper.rotateZ(diff)
            angleZ = current; //updating the current angle
            print("In VC: diff = \(diff), angleZ = \(angleZ)")
        }
    };
    /////////////////////////////////
    
    
    //// TEST BUTTON
    @IBAction func TestButton(_ sender: NSButton) {
        
        importantData.shared.theWrapper.testButton()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //let darkGrey = CGColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1.0);
        //let lightGrey = CGColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0);
        
        view.setGradientBackground(colorOne: Colors.veryLightGrey, colorTwo: Colors.darkGrey);
        
        
        //Write Instructions
        InstructionsLabel.stringValue = "Instructions: \nRight Mouse Drag = Pan\nCtrl+Right Mouse Drag = Orbit\nScroll = Zoom"
        
      
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
  


}

