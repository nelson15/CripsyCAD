//
//  importantData.swift
//  AppTest1
//
//  Created by Lucas Calvert on 8/1/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//
// Defin
//////

import Foundation
import Cocoa

class importantData {
    
    // Define a PRIVATE initializer
    private init() { };
    
    
    // Instantiate the singleton variable (can only happen ONCE)
    static let shared = importantData();
    
   
    //Define a default OCCWrapper (temporary)
    var theWrapper = OCCWrapper();
    var initBool: Bool = false;
    
    

}
