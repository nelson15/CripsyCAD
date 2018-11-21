//
//  OCC.m
//  AppTest1
//
//  Created by Lucas Calvert on 7/30/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "iostream"
#import <Cocoa/Cocoa.h>
#include "OpenCascade_Include.h"
#include "OCC.h"
#include <fstream>
#include "ductIGSFile.h"
#include <string>

// OCCController DEFINITION - include all "tracked variables"
struct OCCController{
    NSView * myView;
    NSWindow * window;
    Handle(Aspect_DisplayConnection) aDispConnection;
    Handle(OpenGl_GraphicDriver) aGraphicDriver;
    Handle(Cocoa_Window) aCocoaWindow;
    Handle(V3d_Viewer) aViewer;
    Handle(V3d_View) aView;
    Handle(AIS_InteractiveContext) aContext;
    Handle(SelectMgr_SelectionManager) aSelectionManager;
    IGESControl_Reader myIgesReader;
    Handle(AIS_Shape) anAISShape;
    Handle(AIS_InteractiveObject) anObject;
    //Handle(AIS_InteractiveObject) anObject;
    // Handle(SelectMgr_SelectableObject) mgr_Object;
};

@implementation OCCWrapper

//INITIALIZER
-(instancetype) initWithView: (NSView *) myView{
    if(self = [super init]){
        ctrl = new OCCController;
        ctrl->myView = myView;
    }
    return self;
};


//Creates the bais donut view
-(void)make_donut{
    BRepPrimAPI_MakeTorus TorusGen(3.0, 1.5);
    TopoDS_Shape torus = TorusGen.Shape();
    std::cout<<"Torus Generated"<<std::endl;
    ctrl->aDispConnection = new Aspect_DisplayConnection();
    ctrl->aGraphicDriver = new OpenGl_GraphicDriver (ctrl->aDispConnection, true);
    
    //////////////////////////////////////////////////////////////////////////
    // creating the Viewer
    ctrl->aViewer = new V3d_Viewer (ctrl->aGraphicDriver);
    //ctrl->aViewer->SetDefaultBackgroundColor(Quantity_NOC_BLACK);
    ctrl->aViewer->SetDefaultBackgroundColor(Quantity_NOC_GRAY86);
    ctrl->aViewer->SetDefaultLights();
    //ctrl->aViewer->SetLightOn();
    //ctrl->aViewer->SetLightOn (new V3d_AmbientLight (ctrl->aViewer, Quantity_NOC_RED));
    cout << "V3d_Viewer created" << endl;
    
    ctrl->aCocoaWindow = new Cocoa_Window(ctrl->myView);
    cout << "Cocoa Window created" << endl;
    
    [ctrl->window setContentView: ctrl->aCocoaWindow->HView()];
    [ctrl->window makeFirstResponder: ctrl->aCocoaWindow->HView()];
    [ctrl->window setAcceptsMouseMovedEvents: YES];
    
    //creating a View
    ctrl->aView = ctrl->aViewer->CreateView();
    ctrl->aView->SetWindow(ctrl->aCocoaWindow);
    cout << "cocoa window associated with aView" << endl;
    ctrl->aContext = new AIS_InteractiveContext(ctrl->aViewer);
    ctrl->anAISShape = new AIS_Shape(torus);
    ctrl->anAISShape->SetColor(Quantity_NOC_LIGHTBLUE3);
    ctrl->anAISShape->SetDisplayMode(1);
    ctrl->aContext->Display(ctrl->anAISShape, true);
    
    // Adding a trihedron to the display
    ctrl->aView->TriedronDisplay(Aspect_TOTP_RIGHT_LOWER, Quantity_NOC_RED, 0.3, V3d_WIREFRAME);
    
    ctrl->aCocoaWindow->Map(); //Show the window
    ctrl->aView->FitAll(0.1, true); //Set initial size of the object in the view
    ctrl->aView->Redraw(); //Redraw the view to show changes
    
    //set the interactive object
    //ctrl->anObject =  new AIS_InteractiveObject;
    //ctrl->mgr_Object = new SelectMgr_SelectableObject;
    //ctrl->aView->SetAt(-1, 1, -1);
    //SELECTION
    ctrl->aContext->OpenLocalContext(Standard_True,Standard_True);
    ctrl->aContext->Display(ctrl->anAISShape,AIS_Shaded,0,Standard_True,Standard_True);
    //ctrl->aContext->ActivateStandardMode(TopAbs_FACE);
    ctrl->aContext->ActivateStandardMode(TopAbs_FACE);
 
};


-(void) makeFromFile{
    
   
    //IGESControl_Reader myIgesReader;
    std::string file = "dataFile.IGS"; ///Not really sure where this file lives... or how it got there... but it works
    char * cstr = new char [file.length()+1];
    std::strcpy(cstr, file.c_str());
    //std::cout << cstr <<std::endl;
    cout << ctrl->myIgesReader.ReadFile(cstr) << endl;
    Handle(TColStd_HSequenceOfTransient) myList = ctrl->myIgesReader.GiveList("iges-faces");
    int nIgesFaces = myList->Length();
    int nTransFaces = ctrl->myIgesReader.TransferList(myList);
    cout << "IGES Faces Read: " << nIgesFaces
    << "\tTransfered Faces: " << nTransFaces << "\n";
    TopoDS_Shape duct = ctrl->myIgesReader.OneShape();
    
    ctrl->aDispConnection = new Aspect_DisplayConnection();
    ctrl->aGraphicDriver = new OpenGl_GraphicDriver (ctrl->aDispConnection, true);
    
    //////////////////////////////////////////////////////////////////////////
    // creating the Viewer
    ctrl->aViewer = new V3d_Viewer (ctrl->aGraphicDriver);
    ctrl->aViewer->SetDefaultBackgroundColor(Quantity_NOC_BLACK);
    ctrl->aViewer->SetDefaultLights();
    
    //ctrl->aViewer->SetLightOn();
   // Handle(V3d_DirectionalLight) light1 = new V3d_Light;
    //light1->SetType(V3d_DIRECTIONAL);
   // std::cout<<ambL->Intensity()<<std::endl;
   // ambL->SetIntensity(100000);
   // ctrl->aViewer->SetLightOn(ambL);
    
    cout << "V3d_Viewer created" << endl;
    
    ctrl->aCocoaWindow = new Cocoa_Window(ctrl->myView);
    cout << "Cocoa Window created" << endl;
    
    [ctrl->window setContentView: ctrl->aCocoaWindow->HView()];
    [ctrl->window makeFirstResponder: ctrl->aCocoaWindow->HView()];
    [ctrl->window setAcceptsMouseMovedEvents: YES];
    
    //creating a View
    ctrl->aView = ctrl->aViewer->CreateView();
    ctrl->aView->SetWindow(ctrl->aCocoaWindow);
    cout << "cocoa window associated with aView" << endl;
    ctrl->aContext = new AIS_InteractiveContext(ctrl->aViewer);
    ctrl->anAISShape = new AIS_Shape(duct);
    ctrl->anAISShape->SetColor(Quantity_NOC_LIGHTBLUE3);
    ctrl->anAISShape->SetDisplayMode(1);
    ctrl->aContext->Display(ctrl->anAISShape, true);
    
    // Adding a trihedron to the display
    ctrl->aView->TriedronDisplay(Aspect_TOTP_RIGHT_LOWER, Quantity_NOC_RED, 0.3, V3d_WIREFRAME);
    
    ctrl->aCocoaWindow->Map(); //Show the window
    ctrl->aView->FitAll(0.1, true); //Set initial size of the object in the view
    ctrl->aView->Redraw(); //Redraw the view to show changes
    
    //ctrl->aContext->InitSelected();

    //SELECTION
    ctrl->aContext->OpenLocalContext(Standard_True,Standard_True);
   // ctrl->aContext->Display(ctrl->anAISShape,AIS_Shaded,0,Standard_True,Standard_True);
     ctrl->aContext->Display(ctrl->anAISShape,AIS_Shaded,0,Standard_True,Standard_True);
    //ctrl->aContext->Display(ctrl->anObject, Standard_True);
    ctrl->aContext->ActivateStandardMode(TopAbs_FACE);
    

};






-(void) redraw{
    ctrl->aView->Redraw();
    ctrl->aView->MustBeResized();
    //ctrl->aView->
};

-(void) rotate1{
    ctrl->aView->Rotate(0, 0, 0.1); //x,y,z
    ctrl->aView->Redraw();
    ctrl->aView->MustBeResized();
    std::cout<<"Rotating in .mm file"<<std::endl;
    
};


////////////////////////////
// ROTATIONS

-(void) rotateX: (int) angleDeg{
    ctrl->aView->Rotate((angleDeg*2*3.14/180), 0, 0);
    ctrl->aView->Redraw();
};
-(void) rotateY: (int) angleDeg{
    ctrl->aView->Rotate(0,(angleDeg*2*3.14/180), 0);
    ctrl->aView->Redraw();
};
-(void) rotateZ: (int) angleDeg{
    ctrl->aView->Rotate(0,0,(angleDeg*2*3.14/180));
    ctrl->aView->Redraw();
};
////////////////////////////


////////////////////////////
// ZOOMING

-(void) zoom: (float) zoomAmount{
    ctrl->aView->SetZoom(zoomAmount);
    ctrl->aView->Redraw();
    //std::cout<<zoomAmount<<std::endl;
};

////////////////////////////

////////////////////////////
// PANNING

-(void) pan: (int) panAmountX : (int) panAmountY{
    ctrl->aView->Pan(panAmountX, panAmountY);
};





////////////////////////////
//SELECTION

-(void) selectPoint: (int) xPix : (int) yPix{

    ctrl->aContext->MoveTo(xPix, yPix, ctrl->aView, 1);
    std::cout<<xPix<<"  "<<yPix<<std::endl;
    
    Handle(AIS_InteractiveObject) hObj = ctrl->aContext->DetectedInteractive();
}


-(void) setSelectionMethod: (int) option{
    
    //deactivate all selection modes, then re-activate the desired mode
    ctrl->aContext->Deactivate();
    std::cout<<option<<std::endl;
    if (option == 0){
        ctrl->aContext->ActivateStandardMode(TopAbs_FACE);
        //std::cout<<"Face Mode Activated"<<std::endl;
    } else if (option == 1){
        ctrl->aContext->ActivateStandardMode(TopAbs_EDGE);
    } else if (option == 2){
        ctrl->aContext->ActivateStandardMode(TopAbs_VERTEX);
    };
    
};


////////////////////////////




////////////////////////////
//TEST STUFF

-(void) testButton{
    
    //ctrl->aContext->Select(0, 0, 200, 400, ctrl->aView, 1); //selects the whole object
    ctrl->aSelectionManager = new SelectMgr_SelectionManager;
    //ctrl->aContext->
   // AIS_InteractiveObject::;
    //AIS_InteractiveObject::SetContext(ctrl->aContext);
   //ctrl->anAISShape->AIS_InteractiveObject::Se
    ctrl->aContext->MoveTo(150, 150, ctrl->aView, 1);
    
};




////////////////////////////



///////////////////////
// VIEW SNAPPING


-(void) snapToInlet: (int) x : (int) y : (int) z : (float) zoom{
  
    //Find difference bewtween current view angles and desired values
    int diffX = (9 - x);
    int diffY = (152 - y);
    int diffZ = (352 - z);
    
    //Rotate by difference
    //ctrl->aView->Rotate(0,0,(diffZ*3.14/180)); // z
    //ctrl->aView->Rotate(0,(diffY*3.14/180),0); // y
    //ctrl->aView->Rotate((diffX*3.14/180),0,0); // x
    
    ////// WORKS
    ctrl->aView->SetEye(0,0,10000);
    //ctrl->aView->Rotate(0,0,-90*3.14/180); // z
    ctrl->aView->SetTwist(270*3.14/180);
   
    ctrl->aView->SetZoom(zoom);
    ctrl->aView->Pan(-250,0);
    
    Handle(V3d_AmbientLight) ambL = new V3d_AmbientLight(ctrl->aViewer, Quantity_NOC_LIGHTBLUE3);
    ambL->SetIntensity(100);
    ctrl->aViewer->SetLightOn(ambL);
    
    
    ctrl->aView->Redraw();
    
    std::cout<<"New X = "<< x+diffX <<std::endl;
    std::cout<<"New Y = "<< y+diffY <<std::endl;
    std::cout<<"New Z = "<< z+diffZ <<std::endl;
    
    
};


///////////////////////




////////////////////////
// OTHER STUFF
-(void) dealloc{
    delete ctrl;
};


-(void) writeToFile{
    
    ofstream myFile;
    myFile.open("dataFile");
    myFile << "Hello" << endl;
    myFile.close();
}


//////////////////////////
@end


