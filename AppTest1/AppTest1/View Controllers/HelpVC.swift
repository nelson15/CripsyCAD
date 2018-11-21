//
//  HelpVC.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/24/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

import Cocoa

class HelpVC: NSViewController {

    
    @IBOutlet var InstructionsLabel: NSTextField!
    @IBOutlet var hLabel: NSTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        //Write Instructions
        InstructionsLabel.stringValue = "Instructions: \n\nRight Mouse Drag = Pan\nCtrl+Right Mouse Drag = Orbit\nScroll = Zoom"
        
    }
    
}
