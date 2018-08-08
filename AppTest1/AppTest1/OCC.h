//
//  OCC.h
//  AppTest1
//
//  Created by Lucas Calvert on 7/30/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
//#import "OpenCascade_Include.h"

#ifndef OCC_h
#define OCC_h


struct OCCController;

@interface OCCWrapper: NSObject{
    struct OCCController * ctrl;
}

//Initialization and basic setup
-(instancetype) initWithView: (NSView*) myView; //initializes a wrapper with an associates NSView* object
-(void) make_donut; //shows the default donut view
-(void) makeFromFile;

//Important basic functions
-(void) redraw;
-(void) dealloc;
-(void) rotate1;

//Rotations (for sliders)
-(void) rotateX: (int) angleDeg;
-(void) rotateY: (int) angleDeg;
-(void) rotateZ: (int) angleDeg;

//Zooming
-(void) zoom: (float) zoomAmount;


//Panning
-(void) pan: (int) panAmountX : (int) panAmountY;


//Selection
-(void) selectPoint: (int) xPix : (int) yPix;

//Snapping View to Faces (by rotation)
-(void) testButton;

-(void) writeToFile;




@end




#endif /* OCC_h */
