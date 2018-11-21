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
    
    //@IBOutlet weak var InstructionsLabel: NSTextFieldCell!
    @IBOutlet weak var ModelSelector: NSPopUpButton!
    
    @IBOutlet weak var xSlider: NSSlider!
    @IBOutlet weak var ySlider: NSSlider!
    @IBOutlet weak var zSlider: NSSlider!
    @IBOutlet weak var inletSnapButton: NSButton!
    
    //Drop Down Menu
    @IBOutlet weak var menuButtonOutlet: MenuButton!
    @IBOutlet weak var menuItem1Outlet: MenuButton!
    @IBOutlet weak var menuItem2Outlet: MenuButton!
    
    ////////////////////////
    
    
    @IBOutlet weak var stackViewOutlet: NSStackView!
    
    @IBAction func menuButtonActionV2(_ sender: Any) {
        print("Button is activated");
        menuItem1Outlet.isHidden = !menuItem1Outlet.isHidden;
        menuItem2Outlet.isHidden = !menuItem2Outlet.isHidden;
        
        print(menuItem1Outlet.isHidden)
        
       // stackViewOutlet.
        
       
    }
    
  
    var zoomVal: Int32 = 0; //current zoom value
    
    
    
    
    
    /////////////////////////////////
    // Initialization Options

    // Using the drop down menu to make chose which object is being built
    @IBAction func ModelSelection(_ sender: Any) {
        print((sender as AnyObject).indexOfSelectedItem);
        if (sender as AnyObject).indexOfSelectedItem == 0{
            importantData.shared.theWrapper.makeFromFile();
            importantData.shared.theWrapper.redraw();
        } else if ((sender as AnyObject).indexOfSelectedItem == 1){
            importantData.shared.theWrapper.make_donut();
            importantData.shared.theWrapper.redraw();
        };
        
        //setting status to active
        xSlider.isEnabled = true;
        ySlider.isEnabled = true;
        zSlider.isEnabled = true;
        inletSnapButton.isEnabled = true;
        importantData.shared.initBool = true;
    };
    
    ///////////////////////////////
    // ZOOM FUNCTIONS
    @IBAction func zoomIn(_ sender: NSButton) {
     
        if importantData.shared.initBool == true{
            importantData.shared.theWrapper.zoom(1.1);
            importantData.shared.zoomTotal = importantData.shared.zoomTotal * 1.1;
        }
    }
    
    @IBAction func zoomOut(_ sender: NSButton) {
        if importantData.shared.initBool == true{
            importantData.shared.theWrapper.zoom(0.9);
            importantData.shared.zoomTotal = importantData.shared.zoomTotal * 0.9;
        }
    }
    ///////////////////////////////
    
    
    /////////////////////////////////
    // ROTATION FUNCTIONS (from button presses)
    @IBAction func rotateXvc(_ sender: NSSlider) {
        if importantData.shared.initBool == true{
            let current: Int32 = sender.intValue;
            let diff = (current-importantData.shared.angleX);
            importantData.shared.theWrapper.rotateX(diff)
            importantData.shared.angleX = current; //updating the current angle
            print("In VC: diff = \(diff), angleX = \(importantData.shared.angleX)")
        } else{
            print("Not Yet Activated");
            
        }
        
    };
    
    @IBAction func rotateYvc(_ sender: NSSlider) {
        if importantData.shared.initBool == true{
            let current: Int32 = sender.intValue;
            let diff = (current-importantData.shared.angleY);
            importantData.shared.theWrapper.rotateY(diff)
            importantData.shared.angleY = current; //updating the current angle
            print("In VC: diff = \(diff), angleY = \(importantData.shared.angleY)")
        }
    };
    
    @IBAction func rotateZvc(_ sender: NSSlider) {
        if importantData.shared.initBool == true{
            let current: Int32 = sender.intValue;
            let diff = (current-importantData.shared.angleZ);
            importantData.shared.theWrapper.rotateZ(diff)
            importantData.shared.angleZ = current; //updating the current angle
            print("In VC: diff = \(diff), angleZ = \(importantData.shared.angleZ)")
        }
    };
    /////////////////////////////////
    
    ///////////////////////////
    // SELECTION METHODS
    @IBAction func SelectMethod(_ sender: Any) {
        
        //determine which option in the menu is selected
        let selectionIndex = Int32((sender as AnyObject).indexOfSelectedItem)
        
        //change the selection method in opencascade accordingly
        importantData.shared.theWrapper.setSelectionMethod(selectionIndex);
        
       
    };
    
    
    //////////////////////////
    
    //// TEST BUTTON
    @IBAction func TestButton(_ sender: NSButton) {
        let zoomAmount: Float32 = 4/importantData.shared.zoomTotal;
        importantData.shared.theWrapper.snap(toInlet: importantData.shared.angleX, importantData.shared.angleY, importantData.shared.angleZ, zoomAmount);
        
        //track zooming
        importantData.shared.zoomTotal = importantData.shared.zoomTotal * zoomAmount;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        //making the backgound colors
        view.setGradientBackground(colorOne: Colors.veryLightGrey, colorTwo: Colors.darkGrey);
        //view.setGradientBackground(colorOne: Colors.lightBlue, colorTwo: Colors.lightBlue);
        
        
        //making sure there are just two items in the build list
        ModelSelector.removeItem(at: 2);
        
    
    }

    override func viewWillAppear() {
         //making the diffuser by default
        importantData.shared.theWrapper.makeFromFile()
        xSlider.isEnabled = true;
        ySlider.isEnabled = true;
        zSlider.isEnabled = true;
        inletSnapButton.isEnabled = true;
        importantData.shared.initBool = true;
    }
   
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
            
            
        }
    }
    
  
    
    


}

