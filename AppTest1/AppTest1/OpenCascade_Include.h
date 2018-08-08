//
//  OpenCascade_Include.h
//  CPlusPlusTest
//
//  Created by Lucas Calvert on 7/5/18.
//  Copyright © 2018 Lucas Calvert. All rights reserved.
//

#ifndef OpenCascade_Include_h
#define OpenCascade_Include_h

//some default definitions.
#define DEFAULT_DEVIATIONCOEFFICIENT 0.001
#define DEFAULT_DCBIG 0.005
#define DEFAULT_DCVBIG 0.01
#define DEFAULT_DCSMALL 0.0002
#define DEFAULT_DCVSMALL 0.00004
#define DEFAULT_COLOR Quantity_NOC_CYAN1
#define DEFAULT_MATERIAL Graphic3d_NOM_PLASTER
#define DEFAULT_BACKGROUNDCOLOR Quantity_NOC_MATRAGRAY
#define DEFAULT_HILIGHTCOLOR Quantity_NOC_YELLOW

//Application Interactive Services
#include <AIS_InteractiveContext.hxx>
#include <AIS_InteractiveObject.hxx>
#include <AIS_ListOfInteractive.hxx>
#include <AIS_ListIteratorOfListOfInteractive.hxx>
#include <AIS_Shape.hxx>
#include <AIS_Trihedron.hxx>

#include <V3d.hxx>
#include <V3d_View.hxx>
#include <V3d_Viewer.hxx>
#include <V3d_AmbientLight.hxx>
#include <Graphic3d_GraphicDriver.hxx>
#include <Xw_Window.hxx>
#include <Cocoa_Window.hxx>

#include <OpenGl_Context.hxx>
#include <OpenGl_Flipper.hxx>
#include <OpenGl_GraduatedTrihedron.hxx>
#include <OpenGl_Group.hxx>
#include <OpenGl_View.hxx>
#include <OpenGl_StencilTest.hxx>
#include <OpenGl_Text.hxx>
#include <OpenGl_Workspace.hxx>

#include <Aspect_GraphicDeviceDefinitionError.hxx>
#include <Aspect_IdentDefinitionError.hxx>
#include <Graphic3d_StructureManager.hxx>
#include <Message_Messenger.hxx>
#include <OSD_Environment.hxx>

//#include <QtCore>
//#include <QtGui>

#include <OpenGl_Element.hxx>
#include <OpenGl_GraphicDriver.hxx>
#include <Xw_Window.hxx>

#include <Aspect_DisplayConnection.hxx>
#include <Aspect_Background.hxx>
#include <Aspect_TypeOfLine.hxx>
#include <Aspect_WidthOfLine.hxx>
#include <Aspect_Window.hxx>

//BRep tools
#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <BRepBuilderAPI.hxx>
#include <BRepAlgo.hxx>
#include <BRepTools.hxx>
#include <BRepPrimAPI_MakeBox.hxx>
#include <BRepPrimAPI_MakeCylinder.hxx>
#include <BRepPrimAPI_MakeTorus.hxx>

//TopoDS tools
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_ListIteratorOfListOfShape.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopExp.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>

//standard type definitions
#include <Standard_Boolean.hxx>
#include <Standard_CString.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_Integer.hxx>
#include <Standard_IStream.hxx>
#include <Standard_Macro.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_OStream.hxx>
#include <Standard_Real.hxx>
#include <Standard_TypeDef.hxx>

// graphic3D
#include <Graphic3d_ArrayOfPoints.hxx>
#include <Graphic3d_ArrayOfPolygons.hxx>
#include <Graphic3d_ArrayOfPolylines.hxx>
#include <Graphic3d_ArrayOfPrimitives.hxx>
#include <Graphic3d_ArrayOfQuadrangleStrips.hxx>
#include <Graphic3d_ArrayOfQuadrangles.hxx>
#include <Graphic3d_ArrayOfSegments.hxx>
#include <Graphic3d_ArrayOfTriangleFans.hxx>
#include <Graphic3d_ArrayOfTriangleStrips.hxx>
#include <Graphic3d_ArrayOfTriangles.hxx>
#include <Graphic3d_AspectFillArea3d.hxx>
#include <Graphic3d_AspectLine3d.hxx>
#include <Graphic3d_AspectMarker3d.hxx>
#include <Graphic3d_AspectText3d.hxx>
#include <Graphic3d_AspectTextDefinitionError.hxx>
#include <Graphic3d_BSDF.hxx>
#include <Graphic3d_BndBox3d.hxx>
#include <Graphic3d_BndBox4d.hxx>
#include <Graphic3d_BndBox4f.hxx>
#include <Graphic3d_BoundBuffer.hxx>
#include <Graphic3d_Buffer.hxx>
#include <Graphic3d_BufferType.hxx>
#include <Graphic3d_CLight.hxx>
#include <Graphic3d_CStructure.hxx>
#include <Graphic3d_CTexture.hxx>
#include <Graphic3d_CView.hxx>
#include <Graphic3d_Camera.hxx>
#include <Graphic3d_CameraTile.hxx>
#include <Graphic3d_CappingFlags.hxx>
#include <Graphic3d_ClipPlane.hxx>
#include <Graphic3d_DataStructureManager.hxx>
#include <Graphic3d_DiagnosticInfo.hxx>
#include <Graphic3d_ExportFormat.hxx>
#include <Graphic3d_GraduatedTrihedron.hxx>
#include <Graphic3d_GraphicDriver.hxx>
#include <Graphic3d_Group.hxx>
#include <Graphic3d_GroupAspect.hxx>
#include <Graphic3d_GroupDefinitionError.hxx>
#include <Graphic3d_HatchStyle.hxx>
#include <Graphic3d_HighlightStyle.hxx>
#include <Graphic3d_HorizontalTextAlignment.hxx>
#include <Graphic3d_IndexBuffer.hxx>
#include <Graphic3d_IndexedMapOfAddress.hxx>
#include <Graphic3d_LevelOfTextureAnisotropy.hxx>
#include <Graphic3d_MapIteratorOfMapOfStructure.hxx>
#include <Graphic3d_MapOfObject.hxx>
#include <Graphic3d_MapOfStructure.hxx>
#include <Graphic3d_MarkerImage.hxx>
#include <Graphic3d_Mat4.hxx>
#include <Graphic3d_Mat4d.hxx>
#include <Graphic3d_MaterialAspect.hxx>
#include <Graphic3d_MaterialDefinitionError.hxx>
#include <Graphic3d_NMapOfTransient.hxx>
#include <Graphic3d_NameOfMaterial.hxx>
#include <Graphic3d_NameOfTexture1D.hxx>
#include <Graphic3d_NameOfTexture2D.hxx>
#include <Graphic3d_NameOfTextureEnv.hxx>
#include <Graphic3d_NameOfTexturePlane.hxx>
#include <Graphic3d_PolygonOffset.hxx>
#include <Graphic3d_PresentationAttributes.hxx>
#include <Graphic3d_PriorityDefinitionError.hxx>
#include <Graphic3d_RenderTransparentMethod.hxx>
#include <Graphic3d_RenderingMode.hxx>
#include <Graphic3d_RenderingParams.hxx>
#include <Graphic3d_SequenceOfGroup.hxx>
#include <Graphic3d_SequenceOfHClipPlane.hxx>
#include <Graphic3d_SequenceOfStructure.hxx>
#include <Graphic3d_ShaderAttribute.hxx>
#include <Graphic3d_ShaderObject.hxx>
#include <Graphic3d_ShaderProgram.hxx>
#include <Graphic3d_ShaderVariable.hxx>
#include <Graphic3d_SortType.hxx>
#include <Graphic3d_StereoMode.hxx>
#include <Graphic3d_Structure.hxx>
#include <Graphic3d_StructureDefinitionError.hxx>
#include <Graphic3d_StructureManager.hxx>
#include <Graphic3d_TextPath.hxx>
#include <Graphic3d_Texture1D.hxx>
#include <Graphic3d_Texture1Dmanual.hxx>
#include <Graphic3d_Texture1Dsegment.hxx>
#include <Graphic3d_Texture2D.hxx>
#include <Graphic3d_Texture2Dmanual.hxx>
#include <Graphic3d_Texture2Dplane.hxx>
#include <Graphic3d_TextureEnv.hxx>
#include <Graphic3d_TextureMap.hxx>
#include <Graphic3d_TextureParams.hxx>
#include <Graphic3d_TextureRoot.hxx>
#include <Graphic3d_TextureSet.hxx>
#include <Graphic3d_TextureUnit.hxx>
#include <Graphic3d_ToneMappingMethod.hxx>
#include <Graphic3d_TransModeFlags.hxx>
#include <Graphic3d_TransformError.hxx>
#include <Graphic3d_TransformPers.hxx>
#include <Graphic3d_TransformUtils.hxx>
#include <Graphic3d_TypeOfAnswer.hxx>
#include <Graphic3d_TypeOfBackfacingModel.hxx>
#include <Graphic3d_TypeOfBackground.hxx>
#include <Graphic3d_TypeOfComposition.hxx>
#include <Graphic3d_TypeOfConnection.hxx>
#include <Graphic3d_TypeOfLightSource.hxx>
#include <Graphic3d_TypeOfLimit.hxx>
#include <Graphic3d_TypeOfMaterial.hxx>
#include <Graphic3d_TypeOfPrimitiveArray.hxx>
#include <Graphic3d_TypeOfReflection.hxx>
#include <Graphic3d_TypeOfShaderObject.hxx>
#include <Graphic3d_TypeOfShadingModel.hxx>
#include <Graphic3d_TypeOfStructure.hxx>
#include <Graphic3d_TypeOfTexture.hxx>
#include <Graphic3d_TypeOfTextureFilter.hxx>
#include <Graphic3d_TypeOfTextureMode.hxx>
#include <Graphic3d_TypeOfVisualization.hxx>
#include <Graphic3d_Vec.hxx>
#include <Graphic3d_Vec2.hxx>
#include <Graphic3d_Vec3.hxx>
#include <Graphic3d_Vec4.hxx>
#include <Graphic3d_Vector.hxx>
#include <Graphic3d_VectorError.hxx>
#include <Graphic3d_Vertex.hxx>
#include <Graphic3d_VerticalTextAlignment.hxx>
#include <Graphic3d_ViewAffinity.hxx>
#include <Graphic3d_WorldViewProjState.hxx>
#include <Graphic3d_ZLayerId.hxx>
#include <Graphic3d_ZLayerSettings.hxx>

// specific STEP
#include <STEPControl_Controller.hxx>
#include <STEPControl_Reader.hxx>
#include <STEPControl_Writer.hxx>
#include <STEPControl_StepModelType.hxx>

// specific IGES
#include <Interface_InterfaceModel.hxx>
#include <Interface_Static.hxx>

#include <TColStd_HSequenceOfTransient.hxx>
#include <IGESControl_Controller.hxx>
#include <IGESControl_Writer.hxx>
#include <IGESControl_Reader.hxx>
#include <IGESToBRep_Actor.hxx>
#include <IGESToBRep_Reader.hxx>
#include <XSControl_WorkSession.hxx>

// other
#include <Geom_Line.hxx>
#include <Geom_Circle.hxx>
#include <Geom_TrimmedCurve.hxx>
#include <GC_MakeArcOfCircle.hxx>
#include <GC_MakeSegment.hxx>
#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Handle.hxx>

#include <Standard_Boolean.hxx>
#include <XSControl_Reader.hxx>
#include <Standard_Integer.hxx>
#include <IFSelect_PrintFail.hxx>
#include <IFSelect_PrintCount.hxx>



// Selection
#include <SelectBasics.hxx>
#include <Select3D_BVHBuilder3d.hxx>
#include <Select3D_BVHIndexBuffer.hxx>
#include <Select3D_BndBox3d.hxx>
#include <Select3D_EntitySequence.hxx>
#include <Select3D_IndexedMapOfEntity.hxx>
#include <Select3D_InteriorSensitivePointSet.hxx>
#include <Select3D_Pnt.hxx>
#include <Select3D_PointData.hxx>
#include <Select3D_SensitiveBox.hxx>
#include <Select3D_SensitiveCircle.hxx>
#include <Select3D_SensitiveCurve.hxx>
#include <Select3D_SensitiveEntity.hxx>
#include <Select3D_SensitiveFace.hxx>
#include <Select3D_SensitiveGroup.hxx>
#include <Select3D_SensitivePoint.hxx>
#include <Select3D_SensitivePoly.hxx>
#include <Select3D_SensitivePrimitiveArray.hxx>
#include <Select3D_SensitiveSegment.hxx>
#include <Select3D_SensitiveSet.hxx>
#include <Select3D_SensitiveTriangle.hxx>
#include <Select3D_SensitiveTriangulation.hxx>
#include <Select3D_SensitiveWire.hxx>
#include <Select3D_TypeOfSensitivity.hxx>
#include <SelectBasics.hxx>
#include <SelectBasics_EntityOwner.hxx>
#include <SelectBasics_PickResult.hxx>
#include <SelectBasics_SelectingVolumeManager.hxx>
#include <SelectBasics_SensitiveEntity.hxx>
#include <SelectMgr_AndFilter.hxx>
#include <SelectMgr_BaseFrustum.hxx>
#include <SelectMgr_CompositionFilter.hxx>
//#include <SelectMgr_CompositionFilter.lxx>
#include <SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors.hxx>
#include <SelectMgr_DataMapOfObjectSelectors.hxx>
#include <SelectMgr_EntityOwner.hxx>
#include <SelectMgr_Filter.hxx>
#include <SelectMgr_Frustum.hxx>
//#include <SelectMgr_Frustum.lxx>
#include <SelectMgr_FrustumBuilder.hxx>
#include <SelectMgr_IndexedDataMapOfOwnerCriterion.hxx>
#include <SelectMgr_IndexedMapOfOwner.hxx>
#include <SelectMgr_ListIteratorOfListOfFilter.hxx>
#include <SelectMgr_ListOfFilter.hxx>
#include <SelectMgr_OrFilter.hxx>
#include <SelectMgr_PickingStrategy.hxx>
#include <SelectMgr_RectangularFrustum.hxx>
#include <SelectMgr_SOPtr.hxx>
#include <SelectMgr_SelectableObject.hxx>
#include <SelectMgr_SelectableObjectSet.hxx>
#include <SelectMgr_SelectingVolumeManager.hxx>
#include <SelectMgr_Selection.hxx>
//#include <SelectMgr_Selection.lxx>
#include <SelectMgr_SelectionManager.hxx>
#include <SelectMgr_SensitiveEntity.hxx>
#include <SelectMgr_SensitiveEntitySet.hxx>
#include <SelectMgr_SequenceOfFilter.hxx>
#include <SelectMgr_SequenceOfOwner.hxx>
#include <SelectMgr_SequenceOfSelection.hxx>
#include <SelectMgr_SequenceOfSelector.hxx>
#include <SelectMgr_SortCriterion.hxx>
#include <SelectMgr_StateOfSelection.hxx>
#include <SelectMgr_ToleranceMap.hxx>
#include <SelectMgr_TriangularFrustum.hxx>
#include <SelectMgr_TriangularFrustumSet.hxx>
#include <SelectMgr_TypeOfBVHUpdate.hxx>
#include <SelectMgr_TypeOfUpdate.hxx>
#include <SelectMgr_VectorTypes.hxx>
#include <SelectMgr_ViewClipRange.hxx>
#include <SelectMgr_ViewerSelector.hxx>

#endif /* OpenCascade_Include_h */


