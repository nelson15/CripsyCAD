//
//  importantData.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/1/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//
//
//////

import Foundation
import Cocoa

class importantData {
    
    // Define a PRIVATE initializer
    private init() { };
    
    // Instantiate the singleton variable (can only happen ONCE)
    static let shared = importantData();
    
    //Define a default values
        //Empty OCCWrapper
            var theWrapper = OCCWrapper();
        //Initialization tracking
            var initBool: Bool = false;
        //View angle tracking
            var angleX: Int32 = 180;
            var angleY: Int32 = 180;
            var angleZ: Int32 = 180;
        //Zoom tracking
    var zoomTotal: Float32 = 1.0;
};
