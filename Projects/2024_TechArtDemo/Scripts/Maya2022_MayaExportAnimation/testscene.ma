//Maya ASCII 2022 scene
//Name: testscene.ma
//Last modified: Wed, Aug 28, 2024 10:31:47 PM
//Codeset: 1252
file -rdi 1 -ns "lou_edit" -rfn "lou_editRN" -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/pythonlearning/Projects/2024_TechArtDemo/OnlineMaterials/Lou_rig/lou_edit.ma";
file -rdi 1 -ns "CM01_Lito_RIG_Publish_v0003" -rfn "CM01_Lito_RIG_Publish_v0003RN"
		 -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/Work_Rigs/CM01_Lito_RIG_Publish_v0003.ma";
file -r -ns "lou_edit" -dr 1 -rfn "lou_editRN" -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/pythonlearning/Projects/2024_TechArtDemo/OnlineMaterials/Lou_rig/lou_edit.ma";
file -r -ns "CM01_Lito_RIG_Publish_v0003" -dr 1 -rfn "CM01_Lito_RIG_Publish_v0003RN"
		 -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/Work_Rigs/CM01_Lito_RIG_Publish_v0003.ma";
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "mtoa" "4.2.1";
requires "mtoa" "4.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t palf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 22631)";
fileInfo "UUID" "0F4B3669-4F46-E997-C46D-EBBFF343C3F9";
createNode transform -s -n "persp";
	rename -uid "E80FDFE7-4DE9-6653-9C72-F084BA76D8C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 327.90378079829708 219.28257360935405 368.28125497926811 ;
	setAttr ".r" -type "double3" -15.93835272960375 41.000000000000909 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "43142244-4124-E990-CC75-BEB55BB98AE5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 557.09602567551599;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9436DB41-43AE-2214-CA64-8CB7E8CA85A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C2086418-46C4-17AE-8820-548C79AB36DC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "46ED962B-43EE-436B-AE97-DC804482C2A5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F268EDF0-46BD-6FC2-676E-A0A86970049A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B83FFF93-4A98-DEF3-6E50-CEB66F0FBD64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "71154750-4E5F-1FE7-006B-238E00A1DFA9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Cine_Camera_Actor";
	rename -uid "F8D445B9-47D0-9873-5DFA-04A87788ED72";
	setAttr ".t" -type "double3" 246.86830901953877 181.85752205506793 314.4001094219206 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -13.199999999999964 37.599999999999959 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "Cine_Camera_ActorShape" -p "Cine_Camera_Actor";
	rename -uid "CF3F3397-454C-3A9A-AA67-0DA1429E8847";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr -l on ".coi" 403.91084981540348;
	setAttr -l on ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dgm" no;
	setAttr ".dr" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F3BB76EA-4F5A-34AB-ED8F-8EA44C5D0A98";
	setAttr -s 18 ".lnk";
	setAttr -s 18 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "057FAFFC-4989-0D3F-D99C-BFB75D3F06CE";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B6EB54AB-4B9E-989E-C38C-BE924F1EA503";
	setAttr ".tpdt[0].tpcd" -type "Int32Array" 1 0 ;
createNode displayLayerManager -n "layerManager";
	rename -uid "7B2F44B9-4A0A-95BA-3E7B-75ABF38F8498";
createNode displayLayer -n "defaultLayer";
	rename -uid "39826DD4-41C1-297C-5FB8-85B66A74BAF9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1097C2E9-4397-6315-88E4-2BBBC5769F72";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F56C1C4B-4CB2-B8DB-B576-FA8CE3152167";
	setAttr ".g" yes;
createNode reference -n "lou_editRN";
	rename -uid "16161C43-44CA-7589-CCC7-328CF04C0F7D";
	setAttr -s 29 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"lou_editRN"
		"lou_editRN" 0
		"lou_editRN" 101
		2 "|lou_edit:Group" "visibility" " 1"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintHip_R|lou_edit:IKXOffsetHip_R|lou_edit:IKXHip_R" 
		"rotate" " -type \"double3\" 0.12089771634338781 0.066807125267252992 11.70768832261856396"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintHip_R|lou_edit:IKXOffsetHip_R|lou_edit:IKXHip_R|lou_edit:IKXKnee_R" 
		"rotate" " -type \"double3\" 0 0 -26.10563273425533382"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintHip_R|lou_edit:IKXOffsetHip_R|lou_edit:IKXHip_R|lou_edit:IKXKnee_R|lou_edit:IKXAnkle_R|lou_edit:IKXToes_R" 
		"rotate" " -type \"double3\" -6.522952561899257e-06 -1.1100335343818614e-05 7.8146928734770059e-05"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintShoulder_R|lou_edit:IKXOffsetShoulder_R|lou_edit:IKXShoulder_R" 
		"rotate" " -type \"double3\" -1.05259260067850868 -2.92171225504832588 -14.14440629043787112"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintShoulder_R|lou_edit:IKXOffsetShoulder_R|lou_edit:IKXShoulder_R|lou_edit:IKXElbow_R" 
		"rotate" " -type \"double3\" 0 0 28.83006511459688426"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintRoot_M|lou_edit:IKfake0Spine_M" 
		"translate" " -type \"double3\" -4.03232096663242601 0.46747848728674946 0"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintRoot_M|lou_edit:IKfake0Spine_M" 
		"rotate" " -type \"double3\" 0 0 -4.24382876916221452"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintRoot_M|lou_edit:IKfake0Spine_M|lou_edit:IKSpRootPart1_M|lou_edit:IKSpSpine1_M" 
		"rotate" " -type \"double3\" 0 0 8.8936113623518942"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintHip_L|lou_edit:IKXOffsetHip_L|lou_edit:IKXHip_L" 
		"rotate" " -type \"double3\" 0.12089771634997942 0.066807125266652057 11.70768832241521018"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintHip_L|lou_edit:IKXOffsetHip_L|lou_edit:IKXHip_L|lou_edit:IKXKnee_L" 
		"rotate" " -type \"double3\" 0 0 -26.10563273380452642"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintHip_L|lou_edit:IKXOffsetHip_L|lou_edit:IKXHip_L|lou_edit:IKXKnee_L|lou_edit:IKXAnkle_L|lou_edit:IKXToes_L" 
		"rotate" " -type \"double3\" -6.5229301199054278e-06 -1.1100336092858909e-05 7.8146928628373017e-05"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintShoulder_L|lou_edit:IKXOffsetShoulder_L|lou_edit:IKXShoulder_L" 
		"rotate" " -type \"double3\" -1.05259260067075333 -2.92171225504918874 -14.14440629042433706"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKJoints|lou_edit:IKParentConstraintShoulder_L|lou_edit:IKXOffsetShoulder_L|lou_edit:IKXShoulder_L|lou_edit:IKXElbow_L" 
		"rotate" " -type \"double3\" 0 0 28.83006511456936494"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKHandle|lou_edit:IKSpineHandle_M" 
		"translate" " -type \"double3\" 0 124.3161936498024005 -1.23756491395251889"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:IKSystem|lou_edit:IKHandle|lou_edit:IKSpineHandle_M" 
		"rotate" " -type \"double3\" 89.99999999999994316 -7.0188957514744823 89.99999999999994316"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetHead_M|lou_edit:TwistFollowParentHead_M|lou_edit:UnTwistHead_M" 
		"rotate" " -type \"double3\" 0 0 -2.60509058060499665"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetAnkle_R|lou_edit:TwistFollowParentAnkle_R|lou_edit:UnTwistAnkle_R" 
		"rotate" " -type \"double3\" 0.069449144981998251 0.55033379901151303 14.38468841551172162"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetKnee_R|lou_edit:TwistFollowParentKnee_R|lou_edit:UnTwistKnee_R" 
		"rotate" " -type \"double3\" 0 0 -26.10563273425536579"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetHip_R|lou_edit:TwistFollowParentHip_R|lou_edit:UnTwistHip_R" 
		"rotate" " -type \"double3\" 0.0041917463359045573 0.040884859529219532 11.70766491315767865"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetShoulder_R|lou_edit:TwistFollowParentShoulder_R|lou_edit:UnTwistShoulder_R" 
		"rotate" " -type \"double3\" 0 -9.88971465476481804 0"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetAnkle_L|lou_edit:TwistFollowParentAnkle_L|lou_edit:UnTwistAnkle_L" 
		"rotate" " -type \"double3\" 0.069449144981129793 0.55033379900007651 14.38468841562952605"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetKnee_L|lou_edit:TwistFollowParentKnee_L|lou_edit:UnTwistKnee_L" 
		"rotate" " -type \"double3\" 0 0 -26.10563273380427063"
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetHip_L|lou_edit:TwistFollowParentHip_L|lou_edit:UnTwistHip_L" 
		"rotate" " -type \"double3\" 0.0041917463356840089 0.040884859527783791 11.70766491295423783"
		
		2 "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:TwistSystem|lou_edit:TwistFollowParentOffsetShoulder_L|lou_edit:TwistFollowParentShoulder_L|lou_edit:UnTwistShoulder_L" 
		"rotate" " -type \"double3\" 0 -9.88971465476496725 0"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:highlights|lou_edit:highlightsShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:eyein_L|lou_edit:eyein_LShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:eyein_R|lou_edit:eyein_RShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:jaw_down|lou_edit:jaw_downShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:jaw_up|lou_edit:jaw_upShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:tongue|lou_edit:tongueShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:eyeout_L|lou_edit:eyeout_LShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:eyeout_R|lou_edit:eyeout_RShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:shoes1|lou_edit:shoes1Shape" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:button|lou_edit:buttonShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:tshirt|lou_edit:tshirtShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:Geometry|lou_edit:high|lou_edit:panties1|lou_edit:panties1Shape" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceMotionSystem|lou_edit:FaceMotionFollowHead|lou_edit:ControlsSetup|lou_edit:Acontrols|lou_edit:SmilePullOffset_R|lou_edit:SmilePullAttach_R" 
		"translate" " -type \"double3\" 0 4.1423715657629145e-06 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceMotionSystem|lou_edit:FaceMotionFollowHead|lou_edit:ControlsSetup|lou_edit:Acontrols|lou_edit:SmilePullOffset_L|lou_edit:SmilePullAttach_L" 
		"translate" " -type \"double3\" 0 4.1423715657629145e-06 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:EyeLidLayer|lou_edit:EyeLidLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:EyeBrowLayer|lou_edit:EyeBrowLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:LipLayer|lou_edit:LipLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:JawLayer|lou_edit:JawLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:NoseLayer|lou_edit:NoseLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:SmilePullLayer|lou_edit:SmilePullLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:SmileBulgeLayer|lou_edit:SmileBulgeLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:CheekRaiserLayer|lou_edit:CheekRaiserLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:MouthNarrowLayer|lou_edit:MouthNarrowLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:CheekLayer|lou_edit:CheekLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:RegionsLayer|lou_edit:RegionsLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:UpMidLoLayer|lou_edit:UpMidLoLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:UpMidLoLayer_hair|lou_edit:UpMidLoLayer_hairShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:UpMidLoLayer_brows|lou_edit:UpMidLoLayer_browsShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:UpMidLoLayer_corners|lou_edit:UpMidLoLayer_cornersShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:EyeBrowLayer_brows|lou_edit:EyeBrowLayer_browsShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:RegionsLayer_brows|lou_edit:RegionsLayer_browsShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:EyeLidLayer_lashes|lou_edit:EyeLidLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:CheekRaiserLayer_lashes|lou_edit:CheekRaiserLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:RegionsLayer_lashes|lou_edit:RegionsLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:DeformationLayers|lou_edit:UpMidLoLayer_lashes|lou_edit:UpMidLoLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:FaceDeformationSetups|lou_edit:LipSetup|lou_edit:upperLipCenterPlane|lou_edit:upperLipCenterPlaneShape" 
		"visibility" " -k 0 1"
		2 "|lou_edit:Group|lou_edit:FaceGroup|lou_edit:FaceDeformationSystem|lou_edit:FaceDeformationSetups|lou_edit:LipSetup|lou_edit:lowerLipCenterPlane|lou_edit:lowerLipCenterPlaneShape" 
		"visibility" " -k 0 1"
		2 "lou_edit:faceAdditional" "envelope" " -av 1"
		2 "lou_edit:upperLidCurveCloseBS_R" "envelope" " -av 1"
		2 "lou_edit:lowerLidCurveCloseBS_R" "envelope" " -av 1"
		2 "lou_edit:upperLidCurveCloseBS_L" "envelope" " -av 1"
		2 "lou_edit:lowerLidCurveCloseBS_L" "envelope" " -av 1"
		2 "lou_edit:upperLidCloseAutoShapeBS_R" "envelope" " -av 1"
		2 "lou_edit:lowerLidCloseAutoShapeBS_R" "envelope" " -av 1"
		2 "lou_edit:upperLidCloseAutoShapeBS_L" "envelope" " -av 1"
		2 "lou_edit:lowerLidCloseAutoShapeBS_L" "envelope" " -av 1"
		2 "lou_edit:SquintRightToLeftBS" "envelope" " -av 1"
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.Global" 
		"lou_editRN.placeHolderList[1]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.translateX" 
		"lou_editRN.placeHolderList[2]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.translateY" 
		"lou_editRN.placeHolderList[3]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.translateZ" 
		"lou_editRN.placeHolderList[4]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.rotateX" 
		"lou_editRN.placeHolderList[5]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.rotateY" 
		"lou_editRN.placeHolderList[6]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_R|lou_edit:FKOffsetShoulder_R|lou_edit:FKGlobalStaticShoulder_R|lou_edit:FKGlobalShoulder_R|lou_edit:FKExtraShoulder_R|lou_edit:FKShoulder_R.rotateZ" 
		"lou_editRN.placeHolderList[7]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.Global" 
		"lou_editRN.placeHolderList[8]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.rotateX" 
		"lou_editRN.placeHolderList[9]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.rotateY" 
		"lou_editRN.placeHolderList[10]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.rotateZ" 
		"lou_editRN.placeHolderList[11]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.translateX" 
		"lou_editRN.placeHolderList[12]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.translateY" 
		"lou_editRN.placeHolderList[13]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToChest_M|lou_edit:FKOffsetNeck_M|lou_edit:FKExtraNeck_M|lou_edit:FKXNeck_M|lou_edit:FKOffsetNeckPart1_M|lou_edit:FKExtraNeckPart1_M|lou_edit:FKNeckPart1_M|lou_edit:FKXNeckPart1_M|lou_edit:FKOffsetNeckPart2_M|lou_edit:FKExtraNeckPart2_M|lou_edit:FKNeckPart2_M|lou_edit:FKXNeckPart2_M|lou_edit:FKOffsetHead_M|lou_edit:FKGlobalStaticHead_M|lou_edit:FKGlobalHead_M|lou_edit:FKExtraHead_M|lou_edit:FKHead_M.translateZ" 
		"lou_editRN.placeHolderList[14]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.translateX" 
		"lou_editRN.placeHolderList[15]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.translateY" 
		"lou_editRN.placeHolderList[16]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.translateZ" 
		"lou_editRN.placeHolderList[17]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.rotateX" 
		"lou_editRN.placeHolderList[18]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.rotateY" 
		"lou_editRN.placeHolderList[19]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.rotateZ" 
		"lou_editRN.placeHolderList[20]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:FKSystem|lou_edit:FKParentConstraintToScapula_L|lou_edit:FKOffsetShoulder_L|lou_edit:FKGlobalStaticShoulder_L|lou_edit:FKGlobalShoulder_L|lou_edit:FKExtraShoulder_L|lou_edit:FKShoulder_L.Global" 
		"lou_editRN.placeHolderList[21]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.translateY" 
		"lou_editRN.placeHolderList[22]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.translateX" 
		"lou_editRN.placeHolderList[23]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.translateZ" 
		"lou_editRN.placeHolderList[24]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.rotateX" 
		"lou_editRN.placeHolderList[25]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.rotateY" 
		"lou_editRN.placeHolderList[26]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.rotateZ" 
		"lou_editRN.placeHolderList[27]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.legLock" 
		"lou_editRN.placeHolderList[28]" ""
		5 4 "lou_editRN" "|lou_edit:Group|lou_edit:Main|lou_edit:MotionSystem|lou_edit:RootSystem|lou_edit:RootCenterBtwLegsBlended_M|lou_edit:RootOffsetX_M|lou_edit:RootExtraX_M|lou_edit:RootX_M.CenterBtwFeet" 
		"lou_editRN.placeHolderList[29]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "36EFBBA7-40A1-0D66-2CE4-B09B13CBBFAE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1116\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 328\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 555\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"Cine_Camera_Actor\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2.083333\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1116\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1116\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8E8CC9CC-4E88-49BC-F0C8-F4AAD465BEC3";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 250 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "AB7BADB9-490A-0112-EF40-25AB14119394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "BEF98E81-47E1-80AE-A6AF-6C8B0C7EFF7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 -44.879291248763707;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "40486A85-42AC-8BE9-8601-0BA9C6250564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "A1E361C8-4185-C222-7C57-588E22D734C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "D6EA00E5-4583-E358-03C2-848CAD04AA4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "3FE53EF6-43BB-94C2-9DB0-7A9F27483DF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTU -n "RootX_M_legLock";
	rename -uid "D5D971AA-4263-F0F3-B884-98B3D569A01D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTU -n "RootX_M_CenterBtwFeet";
	rename -uid "9DB191C4-4C94-4B53-DE37-28A30DFEC11F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  2 0 250 0;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "AE5E590F-497D-7E07-AAE4-CAA8AA22A03B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "8EA379D5-4046-E58F-5959-0BB8CF6039C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "26790831-41D6-BAA8-6C51-F6A1D2AA8534";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "47994574-42B6-DBF9-0235-3484B7C5C526";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "ED238ED1-445B-98BC-563F-20AB0740F8EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "5955377A-4B7F-3FC4-6557-119FF8A50DC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "60DB827A-4F59-DEDD-7352-388FA1054E97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "A8A6B533-4DD8-E4DD-B1CA-FF84A7060EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -102.55186531116054;
createNode animCurveTA -n "FKShoulder_L_rotateZ";
	rename -uid "58021A19-4BE5-5D97-5DDD-B9866B0E4CF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKShoulder_L_Global";
	rename -uid "AEE98CA8-49C3-0022-8B2F-79B233C1AAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "1C4A4614-4D19-2056-50A7-D4BEAEF842AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "448EFF31-42BD-9E15-6EE1-13AA18BE6512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -102.55186531116054;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "67A8B6B0-4927-56A5-31BF-BEBBC96F2580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKShoulder_R_Global";
	rename -uid "A00255DB-411A-8F98-87A1-618978C16641";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "9545B554-4FD7-430C-A67F-50B41AC80F4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "699C8079-45F1-437C-4DC8-87947D417DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "5FEAF5D6-4FFB-CFD6-4835-7CB2DDEB94B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -27.013610369116947;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "F8C4757A-406A-2C33-A094-96823C670832";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "E80436F0-4F89-774A-F4F3-04AFB1775A59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "BD9B43BF-4367-8CB4-8E24-C989CADB652E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "C709BF79-4650-58B2-3A32-E3895B415EA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "CE20FF19-4954-1D22-1CFC-66906157E4DD";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "0603606B-48E9-7C8E-7C41-7DA5AE72E27E";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "8EE2A9AC-449A-22CC-9510-D484F72B35F0";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode reference -n "CM01_Lito_RIG_Publish_v0003RN";
	rename -uid "ED1A2777-4448-272E-36DB-ED9FD1404CC9";
	setAttr -s 37 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"CM01_Lito_RIG_Publish_v0003RN"
		"CM01_Lito_RIG_Publish_v0003RN" 0
		"CM01_Lito_RIG_Publish_v0003RN" 130
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintShoulder_R|CM01_Lito_RIG_Publish_v0003:IKXOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:IKXShoulder_R" 
		"rotate" " -type \"double3\" -1.19290522381387265 -2.54090978689787406 1.14812203565223481"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintShoulder_R|CM01_Lito_RIG_Publish_v0003:IKXOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:IKXShoulder_R|CM01_Lito_RIG_Publish_v0003:IKXElbow_R" 
		"rotate" " -type \"double3\" 0 0 -0.75117481354812365"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintNeck02_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineNeck_M" 
		"translate" " -type \"double3\" 3.09025866818680583 0.2052863966413212 -1.5113909808473111e-07"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintNeck02_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineNeck_M" 
		"rotate" " -type \"double3\" 3.2932385651568638e-05 -0.18986907887863139 -1.04303255096538439"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintNeck02_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineNeck_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck03_M" 
		"rotate" " -type \"double3\" 0.0077954536966539176 0.54431828031784812 2.36350922876279324"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintNeck02_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineNeck_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck03_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck04_M" 
		"rotate" " -type \"double3\" 0.021156878639761532 -0.47634704596930155 -3.42044015413079139"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintNeck02_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineNeck_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck03_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck04_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck05_M" 
		"rotate" " -type \"double3\" 0.0019224023006044826 0.12208987718014375 0.78133940955047454"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintNeck02_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineNeck_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck03_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck04_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck05_M|CM01_Lito_RIG_Publish_v0003:IKSpNeck06_M" 
		"rotate" " -type \"double3\" -0.00023994247877376124 0.00027901298614306118 2.65310419858700985"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M" 
		"translate" " -type \"double3\" 13.97117047125161982 9.56497516853215046 -11.31790547122977131"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M" 
		"rotate" " -type \"double3\" 2.1288903992162662e-06 -5.1279067835217719e-07 -8.38301947113904156"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M|CM01_Lito_RIG_Publish_v0003:IKSpTail1_M" 
		"rotate" " -type \"double3\" -3.5031631334437319e-06 5.9609425128088957e-07 9.11824786167982637"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M|CM01_Lito_RIG_Publish_v0003:IKSpTail1_M|CM01_Lito_RIG_Publish_v0003:IKSpTail2_M" 
		"rotate" " -type \"double3\" 1.9748223088107958e-06 -1.0539689083547586e-06 -4.48107582104255187"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M|CM01_Lito_RIG_Publish_v0003:IKSpTail1_M|CM01_Lito_RIG_Publish_v0003:IKSpTail2_M|CM01_Lito_RIG_Publish_v0003:IKSpTail3_M" 
		"rotate" " -type \"double3\" -3.8170004246622761e-07 -1.6799873553858246e-06 -7.30967282058277767"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M|CM01_Lito_RIG_Publish_v0003:IKSpTail1_M|CM01_Lito_RIG_Publish_v0003:IKSpTail2_M|CM01_Lito_RIG_Publish_v0003:IKSpTail3_M|CM01_Lito_RIG_Publish_v0003:IKSpTail4_M" 
		"rotate" " -type \"double3\" -2.8674127590980463e-06 -3.0118441557875604e-07 -12.06463653058079721"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M|CM01_Lito_RIG_Publish_v0003:IKSpTail1_M|CM01_Lito_RIG_Publish_v0003:IKSpTail2_M|CM01_Lito_RIG_Publish_v0003:IKSpTail3_M|CM01_Lito_RIG_Publish_v0003:IKSpTail4_M|CM01_Lito_RIG_Publish_v0003:IKSpTail5_M" 
		"rotate" " -type \"double3\" -2.1718720419573383e-06 4.1198930042251885e-06 -6.83080568329481963"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintTail0_M|CM01_Lito_RIG_Publish_v0003:IKfake0SplineTail_M|CM01_Lito_RIG_Publish_v0003:IKSpTail1_M|CM01_Lito_RIG_Publish_v0003:IKSpTail2_M|CM01_Lito_RIG_Publish_v0003:IKSpTail3_M|CM01_Lito_RIG_Publish_v0003:IKSpTail4_M|CM01_Lito_RIG_Publish_v0003:IKSpTail5_M|CM01_Lito_RIG_Publish_v0003:IKSpTail6_M" 
		"rotate" " -type \"double3\" -9.4234108559719499e-07 4.2490589768519313e-06 29.9631201565776415"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_R|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_R|CM01_Lito_RIG_Publish_v0003:IKXHip_R" 
		"rotate" " -type \"double3\" -0.0093314930730970559 -0.0089455379208965586 -1.07797832504149471"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_R|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_R|CM01_Lito_RIG_Publish_v0003:IKXHip_R|CM01_Lito_RIG_Publish_v0003:IKXKnee_R" 
		"rotate" " -type \"double3\" -1.6199241820051063e-08 1.7780166760010315e-08 5.34839933434697734"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_R|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_R|CM01_Lito_RIG_Publish_v0003:IKXHip_R|CM01_Lito_RIG_Publish_v0003:IKXKnee_R|CM01_Lito_RIG_Publish_v0003:IKXAnkle_R|CM01_Lito_RIG_Publish_v0003:IKXBall_R" 
		"rotate" " -type \"double3\" -6.991938034004761e-07 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_R|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_R|CM01_Lito_RIG_Publish_v0003:IKXHip_R|CM01_Lito_RIG_Publish_v0003:IKXKnee_R|CM01_Lito_RIG_Publish_v0003:IKXAnkle_R|CM01_Lito_RIG_Publish_v0003:IKXBall_R|CM01_Lito_RIG_Publish_v0003:IKXToe_R" 
		"rotate" " -type \"double3\" -1.3795228305359602e-06 -1.3272425317821214e-06 1.3722516012004733e-06"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintRoot_M|CM01_Lito_RIG_Publish_v0003:IKfake0Spine_M" 
		"translate" " -type \"double3\" -1.41128883498968349 1.20876540650771602 -0.0044125116699343658"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintRoot_M|CM01_Lito_RIG_Publish_v0003:IKfake0Spine_M" 
		"rotate" " -type \"double3\" 1.48500031298809e-10 -0.099435761138427836 -5.06455723715947492"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintRoot_M|CM01_Lito_RIG_Publish_v0003:IKfake0Spine_M|CM01_Lito_RIG_Publish_v0003:IKSpSpine1_M" 
		"rotate" " -type \"double3\" 0.020192040686857708 0.27968557514842063 10.92352623938222145"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintRoot_M|CM01_Lito_RIG_Publish_v0003:IKfake0Spine_M|CM01_Lito_RIG_Publish_v0003:IKSpSpine1_M|CM01_Lito_RIG_Publish_v0003:IKSpSpine2_M" 
		"rotate" " -type \"double3\" 0.011762979821244265 -0.23814426704468211 -5.20989356235896928"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintShoulder_L|CM01_Lito_RIG_Publish_v0003:IKXOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:IKXShoulder_L" 
		"rotate" " -type \"double3\" -1.19290656655781846 -2.54090981542234218 1.14814154336425789"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintShoulder_L|CM01_Lito_RIG_Publish_v0003:IKXOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:IKXShoulder_L|CM01_Lito_RIG_Publish_v0003:IKXElbow_L" 
		"rotate" " -type \"double3\" 0 0 -0.75121582725417724"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_L|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_L|CM01_Lito_RIG_Publish_v0003:IKXHip_L" 
		"rotate" " -type \"double3\" -0.0093348455133878301 -0.0089478447841454655 -1.0779784484378887"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_L|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_L|CM01_Lito_RIG_Publish_v0003:IKXHip_L|CM01_Lito_RIG_Publish_v0003:IKXKnee_L" 
		"rotate" " -type \"double3\" -2.5841027823843172e-08 1.9973731430264224e-08 5.34840000204540456"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_L|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_L|CM01_Lito_RIG_Publish_v0003:IKXHip_L|CM01_Lito_RIG_Publish_v0003:IKXKnee_L|CM01_Lito_RIG_Publish_v0003:IKXAnkle_L|CM01_Lito_RIG_Publish_v0003:IKXBall_L" 
		"rotate" " -type \"double3\" -6.6098007501362838e-07 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKJoints|CM01_Lito_RIG_Publish_v0003:IKParentConstraintHip_L|CM01_Lito_RIG_Publish_v0003:IKXOffsetHip_L|CM01_Lito_RIG_Publish_v0003:IKXHip_L|CM01_Lito_RIG_Publish_v0003:IKXKnee_L|CM01_Lito_RIG_Publish_v0003:IKXAnkle_L|CM01_Lito_RIG_Publish_v0003:IKXBall_L|CM01_Lito_RIG_Publish_v0003:IKXToe_L" 
		"rotate" " -type \"double3\" -6.3688634891298497e-07 -1.0613266002545684e-06 1.0297447066947828e-06"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKHandle|CM01_Lito_RIG_Publish_v0003:IKSplineNeckHandle_M" 
		"translate" " -type \"double3\" 3.072783821326453e-07 130.64355446815622486 11.45913998692531166"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKHandle|CM01_Lito_RIG_Publish_v0003:IKSplineNeckHandle_M" 
		"rotate" " -type \"double3\" 89.99999869352136272 -1.86717198689740238 89.99999890980339501"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKHandle|CM01_Lito_RIG_Publish_v0003:IKSpineHandle_M" 
		"translate" " -type \"double3\" -1.8270360880451308e-08 93.81267742886213057 13.94192009198219573"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKHandle|CM01_Lito_RIG_Publish_v0003:IKSpineHandle_M" 
		"rotate" " -type \"double3\" 89.89133630309936507 -41.22875791518821842 90.16275618733588715"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKHandle|CM01_Lito_RIG_Publish_v0003:IKSplineTailHandle_M" 
		"translate" " -type \"double3\" 8.8685869259070723e-09 92.24359356957168643 -33.33282302408785824"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:IKSystem|CM01_Lito_RIG_Publish_v0003:IKHandle|CM01_Lito_RIG_Publish_v0003:IKSplineTailHandle_M" 
		"rotate" " -type \"double3\" 90.00004336396931137 79.3662443177425132 -89.99995430367002314"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSpine2_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSpine2_M|CM01_Lito_RIG_Publish_v0003:UnTwistSpine2_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSpine2_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSpine2_M|CM01_Lito_RIG_Publish_v0003:UnTwistSpine2_M" 
		"translateX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSpine2_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSpine2_M|CM01_Lito_RIG_Publish_v0003:UnTwistSpine2_M" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSpine2_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSpine2_M|CM01_Lito_RIG_Publish_v0003:UnTwistSpine2_M" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowOffsetSplineTail3_M|CM01_Lito_RIG_Publish_v0003:TwistFollowSplineTail3_M" 
		"translate" " -type \"double3\" 0.34250498682899178 1.82635145317807712 -1.3755958661436369e-07"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowOffsetSplineTail3_M|CM01_Lito_RIG_Publish_v0003:TwistFollowSplineTail3_M" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowOffsetSplineTail3_M|CM01_Lito_RIG_Publish_v0003:TwistFollowSplineTail3_M" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSplineTail3_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSplineTail3_M" 
		"translate" " -type \"double3\" 0.34250498682899178 1.82635145317807712 -1.3755958661436369e-07"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSplineTail3_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSplineTail3_M" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSplineTail3_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSplineTail3_M" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowOffsetSplineTail4_M|CM01_Lito_RIG_Publish_v0003:TwistFollowSplineTail4_M" 
		"translate" " -type \"double3\" 0.34250496813039888 1.82635144661618654 -6.9427794471946428e-07"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowOffsetSplineTail4_M|CM01_Lito_RIG_Publish_v0003:TwistFollowSplineTail4_M" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowOffsetSplineTail4_M|CM01_Lito_RIG_Publish_v0003:TwistFollowSplineTail4_M" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSplineTail4_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSplineTail4_M" 
		"translate" " -type \"double3\" 0.34250496813039888 1.82635144661618654 -6.9427794471946428e-07"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSplineTail4_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSplineTail4_M" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:TwistSystem|CM01_Lito_RIG_Publish_v0003:TwistFollowParentOffsetSplineTail4_M|CM01_Lito_RIG_Publish_v0003:TwistFollowParentSplineTail4_M" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"translate" " -type \"double3\" -56.07515177269117146 93.18216170194820336 16.45068596008167106"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"translateX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"rotate" " -type \"double3\" 89.57659389631193392 2.54603995751668011 174.42496279040318541"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"rotateX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"rotateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_R" 
		"rotateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_L" 
		"translate" " -type \"double3\" 56.0751518800440607 93.18216060890695474 16.4506872303266114"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_L" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:ExtraFinger|CM01_Lito_RIG_Publish_v0003:OffsetFingers_L" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:Aimcontrols" 
		"translate" " -type \"double3\" 4.7392053597773498e-07 130.58657335703640001 11.47786243990272936"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:Aimcontrols" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG" 
		"translate" " -type \"double3\" 0.00049557601776017588 -2.24144975884738074 5.99398630794994691"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:L_LowerLip_RG1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:L_LowerLip_RG1" 
		"translateX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:L_LowerLip_RG1" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:L_LowerLip_RG1" 
		"scale" " -type \"double3\" 1.00000000000000022 1.00000000000000044 -1.00000000000000044"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:L_LowerLip_RG1" 
		"scaleX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:L_LowerLip_RG1" 
		"scaleY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:R_LowerLip_RG" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:R_LowerLip_RG" 
		"translateX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:R_LowerLip_RG" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:R_LowerLip_RG" 
		"scale" " -type \"double3\" 1.00000000000000022 1.00000000000000044 1.00000000000000044"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:R_LowerLip_RG" 
		"scaleX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:R_LowerLip_RG" 
		"scaleY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:C_LowerLip01_GRP" 
		"translate" " -type \"double3\" 4.9313788813424349e-07 134.8435363775872986 43.3557093133819933"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:C_LowerLip01_GRP" 
		"translateX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:C_LowerLip01_GRP" 
		"translateY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:C_LowerLip01_GRP" 
		"scale" " -type \"double3\" 1.00000000000000022 1.00000000000000044 1.00000000000000044"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:C_LowerLip01_GRP" 
		"scaleX" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Lip_RG|CM01_Lito_RIG_Publish_v0003:L_Lip_GRp|CM01_Lito_RIG_Publish_v0003:C_LowerLip01_GRP" 
		"scaleY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Eyebrow_RG" 
		"translate" " -type \"double3\" 0.00049557601780994163 -2.24144975884738074 5.99398630794974796"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Eyebrow_RG" 
		"translateZ" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Tongue01_GRP" 
		"scale" " -type \"double3\" 1.00000000000000022 1.00000000000000044 1.00000000000000022"
		
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Extra|CM01_Lito_RIG_Publish_v0003:Tongue01_GRP" 
		"scaleY" " -av"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Misc|CM01_Lito_RIG_Publish_v0003:Lito_V1_Tonue_Dummy|CM01_Lito_RIG_Publish_v0003:Lito_V1_Tonue_DummyShape" 
		"visibility" " -k 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Misc|CM01_Lito_RIG_Publish_v0003:Lito_V1_dummy|CM01_Lito_RIG_Publish_v0003:Lito_V1_dummyShape" 
		"visibility" " -k 0 0"
		2 "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Geo|CM01_Lito_RIG_Publish_v0003:Lito_V1_Jelly|CM01_Lito_RIG_Publish_v0003:Lito_V1_JellyShape" 
		"visibility" " -k 0 1"
		2 "CM01_Lito_RIG_Publish_v0003:Lito_V1_Jelly_blendShapes" "envelope" " 1"
		
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.scaleX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[1]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.scaleY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[2]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.scaleZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[3]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.translateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[4]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[5]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.translateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[6]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.rotateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[7]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.rotateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[8]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_R|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_R|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_R|CM01_Lito_RIG_Publish_v0003:FKShoulder_R.rotateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[9]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.scaleX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[10]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.scaleY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[11]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.scaleZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[12]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.translateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[13]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[14]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.translateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[15]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.rotateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[16]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.rotateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[17]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToNeck01_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck02_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck02_M|CM01_Lito_RIG_Publish_v0003:FKNeck02_M|CM01_Lito_RIG_Publish_v0003:FKXNeck02_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck03_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck03_M|CM01_Lito_RIG_Publish_v0003:FKNeck03_M|CM01_Lito_RIG_Publish_v0003:FKXNeck03_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck04_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck04_M|CM01_Lito_RIG_Publish_v0003:FKNeck04_M|CM01_Lito_RIG_Publish_v0003:FKXNeck04_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck05_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck05_M|CM01_Lito_RIG_Publish_v0003:FKNeck05_M|CM01_Lito_RIG_Publish_v0003:FKXNeck05_M|CM01_Lito_RIG_Publish_v0003:FKOffsetNeck06_M|CM01_Lito_RIG_Publish_v0003:FKExtraNeck06_M|CM01_Lito_RIG_Publish_v0003:FKNeck06_M|CM01_Lito_RIG_Publish_v0003:FKXNeck06_M|CM01_Lito_RIG_Publish_v0003:FKOffsetHead_M|CM01_Lito_RIG_Publish_v0003:FKExtraHead_M|CM01_Lito_RIG_Publish_v0003:FKHead_M.rotateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[18]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.scaleX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[19]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.scaleY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[20]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.scaleZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[21]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.translateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[22]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[23]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.translateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[24]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.rotateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[25]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.rotateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[26]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:FKSystem|CM01_Lito_RIG_Publish_v0003:FKParentConstraintToScapula_L|CM01_Lito_RIG_Publish_v0003:FKOffsetShoulder_L|CM01_Lito_RIG_Publish_v0003:FKExtraShoulder_L|CM01_Lito_RIG_Publish_v0003:FKShoulder_L.rotateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[27]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.translateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[28]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[29]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.translateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[30]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.rotateX" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[31]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.rotateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[32]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.rotateZ" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[33]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:Group|CM01_Lito_RIG_Publish_v0003:MotionSystem|CM01_Lito_RIG_Publish_v0003:RootSystem|CM01_Lito_RIG_Publish_v0003:RootCenterBtwLegsBlended_M|CM01_Lito_RIG_Publish_v0003:RootOffsetX_M|CM01_Lito_RIG_Publish_v0003:RootExtraX_M|CM01_Lito_RIG_Publish_v0003:RootX_M.CenterBtwFeet" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[34]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:FaceControler|CM01_Lito_RIG_Publish_v0003:Facial_RG|CM01_Lito_RIG_Publish_v0003:Facial_Ctrl|CM01_Lito_RIG_Publish_v0003:Jaw_RG|CM01_Lito_RIG_Publish_v0003:Jaw_Ctrl.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[35]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:FaceControler|CM01_Lito_RIG_Publish_v0003:Facial_RG|CM01_Lito_RIG_Publish_v0003:Facial_Ctrl|CM01_Lito_RIG_Publish_v0003:R_Face_Controler|CM01_Lito_RIG_Publish_v0003:R_EyeBlink_RG|CM01_Lito_RIG_Publish_v0003:R_EyeBlink_Ctrl.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[36]" ""
		5 4 "CM01_Lito_RIG_Publish_v0003RN" "|CM01_Lito_RIG_Publish_v0003:All|CM01_Lito_RIG_Publish_v0003:Rig|CM01_Lito_RIG_Publish_v0003:FaceControler|CM01_Lito_RIG_Publish_v0003:Facial_RG|CM01_Lito_RIG_Publish_v0003:Facial_Ctrl|CM01_Lito_RIG_Publish_v0003:L_Face_Controler|CM01_Lito_RIG_Publish_v0003:L_EyeBlink_RG|CM01_Lito_RIG_Publish_v0003:L_EyeBlink_Ctrl.translateY" 
		"CM01_Lito_RIG_Publish_v0003RN.placeHolderList[37]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "RootX_M_translateX1";
	rename -uid "0E12BEC6-4908-1DAC-E0CE-9D89127CFDB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RootX_M_translateY1";
	rename -uid "BA4DF520-43E0-0998-7592-4695CB761F4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -19.268587627453922;
createNode animCurveTL -n "RootX_M_translateZ1";
	rename -uid "8B4F423A-4C1E-137F-948D-5CA8394C1C60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RootX_M_rotateX1";
	rename -uid "0EE63443-4475-2EFF-9DEB-26BC9F48ED60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RootX_M_rotateY1";
	rename -uid "F784E66F-4C84-50F6-F7BF-438F15CD96AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RootX_M_rotateZ1";
	rename -uid "888416E6-42D6-FE32-C80B-7D8CE612FDDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RootX_M_CenterBtwFeet1";
	rename -uid "A4968DD2-49C9-2E38-C204-C295C7C7E052";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateX1";
	rename -uid "D516B285-4BBD-54D0-227F-5CAF9D02601F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateY1";
	rename -uid "C617A1A4-406E-3657-A270-10AD4336663F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateZ1";
	rename -uid "BE2E5376-4A98-D351-ACC4-BDBD0C38F1BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateX1";
	rename -uid "2B3354C4-42C9-7E81-8B26-AB8B4D8008D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateY1";
	rename -uid "99FBCEE3-47BA-0A24-2ED5-3AA771DC07BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateZ1";
	rename -uid "1F49A51B-45F3-8FE9-4299-3EB81C6881B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_L_rotateX1";
	rename -uid "14CA37C4-422C-4D01-BEC9-EC9A174B1F09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_L_rotateY1";
	rename -uid "21DED65B-46A1-D394-5068-38BBFF6A3E32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -37.056322353266452;
createNode animCurveTA -n "FKShoulder_L_rotateZ1";
	rename -uid "AE64D8ED-4AAC-C8F0-FAB5-5F8D363B1A95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "232A978D-4EBA-395C-88FE-929E2563EC59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "B4355118-466D-75FE-5DC6-858ACB57D22D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "9CAAA0AA-4907-A089-2816-55A760ABF85C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "FKShoulder_R_rotateX1";
	rename -uid "4C76B695-4968-6762-D9A5-7FB35C9252A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKShoulder_R_rotateY1";
	rename -uid "12C38AD0-48B6-C304-4503-49A53AB46EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -37.056322353266452;
createNode animCurveTA -n "FKShoulder_R_rotateZ1";
	rename -uid "114A84BE-4514-B5F6-590C-53AC420AF8E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "A8C1823D-41EC-EEA8-A38D-B1844E4DAF8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "2E0C5E4B-476C-8DC4-516B-BEBCFBE17896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "84676281-4C3E-DFFE-5573-2DA6FB098D2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "FKHead_M_rotateX1";
	rename -uid "DD8ED7DD-4335-BA15-2503-46A0FE93ABE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateY1";
	rename -uid "39EECB86-478F-DA16-869D-6896920AA2DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "FKHead_M_rotateZ1";
	rename -uid "0BB6852E-418B-0214-1D94-9EB828CF0D2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -26.844909602113891;
createNode animCurveTL -n "FKHead_M_translateX1";
	rename -uid "462867B2-4322-4B10-5131-C6A19CBA794E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateY1";
	rename -uid "F33A1F69-407F-B046-8210-B7B7ADAED053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "FKHead_M_translateZ1";
	rename -uid "DCE31B00-4F3A-FF32-37B1-F88413C8C121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "A2CFA50B-4112-DADB-1FAB-5B8D31BF8D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "7F57FE72-425B-459A-76D0-BC93C2F7FA70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "676610F0-466A-10E1-8770-59B999950DF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Jaw_Ctrl_translateY";
	rename -uid "F93F90C0-4740-F0EB-9873-D1A16346CF17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -1;
createNode animCurveTL -n "L_EyeBlink_Ctrl_translateY";
	rename -uid "22F8C869-431F-D681-94E8-C1BEC0BEDF8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -1;
createNode animCurveTL -n "R_EyeBlink_Ctrl_translateY";
	rename -uid "D1CD5CB5-4C19-FC00-F8B3-FA9FEF359A92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 250 -1;
select -ne :time1;
	setAttr ".o" 48;
	setAttr ".unw" 48;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 18 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 21 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 109 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
select -ne :defaultTextureList1;
	setAttr -s 9 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 31 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 7 ".sol";
connectAttr "FKShoulder_R_Global.o" "lou_editRN.phl[1]";
connectAttr "FKShoulder_R_translateX.o" "lou_editRN.phl[2]";
connectAttr "FKShoulder_R_translateY.o" "lou_editRN.phl[3]";
connectAttr "FKShoulder_R_translateZ.o" "lou_editRN.phl[4]";
connectAttr "FKShoulder_R_rotateX.o" "lou_editRN.phl[5]";
connectAttr "FKShoulder_R_rotateY.o" "lou_editRN.phl[6]";
connectAttr "FKShoulder_R_rotateZ.o" "lou_editRN.phl[7]";
connectAttr "FKHead_M_Global.o" "lou_editRN.phl[8]";
connectAttr "FKHead_M_rotateX.o" "lou_editRN.phl[9]";
connectAttr "FKHead_M_rotateY.o" "lou_editRN.phl[10]";
connectAttr "FKHead_M_rotateZ.o" "lou_editRN.phl[11]";
connectAttr "FKHead_M_translateX.o" "lou_editRN.phl[12]";
connectAttr "FKHead_M_translateY.o" "lou_editRN.phl[13]";
connectAttr "FKHead_M_translateZ.o" "lou_editRN.phl[14]";
connectAttr "FKShoulder_L_translateX.o" "lou_editRN.phl[15]";
connectAttr "FKShoulder_L_translateY.o" "lou_editRN.phl[16]";
connectAttr "FKShoulder_L_translateZ.o" "lou_editRN.phl[17]";
connectAttr "FKShoulder_L_rotateX.o" "lou_editRN.phl[18]";
connectAttr "FKShoulder_L_rotateY.o" "lou_editRN.phl[19]";
connectAttr "FKShoulder_L_rotateZ.o" "lou_editRN.phl[20]";
connectAttr "FKShoulder_L_Global.o" "lou_editRN.phl[21]";
connectAttr "RootX_M_translateY.o" "lou_editRN.phl[22]";
connectAttr "RootX_M_translateX.o" "lou_editRN.phl[23]";
connectAttr "RootX_M_translateZ.o" "lou_editRN.phl[24]";
connectAttr "RootX_M_rotateX.o" "lou_editRN.phl[25]";
connectAttr "RootX_M_rotateY.o" "lou_editRN.phl[26]";
connectAttr "RootX_M_rotateZ.o" "lou_editRN.phl[27]";
connectAttr "RootX_M_legLock.o" "lou_editRN.phl[28]";
connectAttr "RootX_M_CenterBtwFeet.o" "lou_editRN.phl[29]";
connectAttr "FKShoulder_R_scaleX.o" "CM01_Lito_RIG_Publish_v0003RN.phl[1]";
connectAttr "FKShoulder_R_scaleY.o" "CM01_Lito_RIG_Publish_v0003RN.phl[2]";
connectAttr "FKShoulder_R_scaleZ.o" "CM01_Lito_RIG_Publish_v0003RN.phl[3]";
connectAttr "FKShoulder_R_translateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[4]";
connectAttr "FKShoulder_R_translateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[5]";
connectAttr "FKShoulder_R_translateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[6]";
connectAttr "FKShoulder_R_rotateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[7]";
connectAttr "FKShoulder_R_rotateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[8]";
connectAttr "FKShoulder_R_rotateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[9]";
connectAttr "FKHead_M_scaleX.o" "CM01_Lito_RIG_Publish_v0003RN.phl[10]";
connectAttr "FKHead_M_scaleY.o" "CM01_Lito_RIG_Publish_v0003RN.phl[11]";
connectAttr "FKHead_M_scaleZ.o" "CM01_Lito_RIG_Publish_v0003RN.phl[12]";
connectAttr "FKHead_M_translateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[13]";
connectAttr "FKHead_M_translateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[14]";
connectAttr "FKHead_M_translateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[15]";
connectAttr "FKHead_M_rotateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[16]";
connectAttr "FKHead_M_rotateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[17]";
connectAttr "FKHead_M_rotateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[18]";
connectAttr "FKShoulder_L_scaleX.o" "CM01_Lito_RIG_Publish_v0003RN.phl[19]";
connectAttr "FKShoulder_L_scaleY.o" "CM01_Lito_RIG_Publish_v0003RN.phl[20]";
connectAttr "FKShoulder_L_scaleZ.o" "CM01_Lito_RIG_Publish_v0003RN.phl[21]";
connectAttr "FKShoulder_L_translateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[22]"
		;
connectAttr "FKShoulder_L_translateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[23]"
		;
connectAttr "FKShoulder_L_translateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[24]"
		;
connectAttr "FKShoulder_L_rotateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[25]";
connectAttr "FKShoulder_L_rotateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[26]";
connectAttr "FKShoulder_L_rotateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[27]";
connectAttr "RootX_M_translateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[28]";
connectAttr "RootX_M_translateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[29]";
connectAttr "RootX_M_translateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[30]";
connectAttr "RootX_M_rotateX1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[31]";
connectAttr "RootX_M_rotateY1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[32]";
connectAttr "RootX_M_rotateZ1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[33]";
connectAttr "RootX_M_CenterBtwFeet1.o" "CM01_Lito_RIG_Publish_v0003RN.phl[34]";
connectAttr "Jaw_Ctrl_translateY.o" "CM01_Lito_RIG_Publish_v0003RN.phl[35]";
connectAttr "R_EyeBlink_Ctrl_translateY.o" "CM01_Lito_RIG_Publish_v0003RN.phl[36]"
		;
connectAttr "L_EyeBlink_Ctrl_translateY.o" "CM01_Lito_RIG_Publish_v0003RN.phl[37]"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=notes_bricksTopiaryGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_Suelo:string=value";
dataStructure -fmt "raw" -as "name=notes_floor1:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksGround:string=value";
dataStructure -fmt "raw" -as "name=notes_floorCampfire:string=value";
dataStructure -fmt "raw" -as "name=mapManager_curbsGarden_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_riverSideground:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchDegraded_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_circular:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloA:string=value";
dataStructure -fmt "raw" -as "name=notes_tilesFloorDet:string=value";
dataStructure -fmt "raw" -as "name=notes_grassGround_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsCSA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane4:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor1:string=value";
dataStructure -fmt "raw" -as "name=notes_treesA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_degraded:string=value";
dataStructure -fmt "raw" -as "name=mapManager_scatterGround:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsCSB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassDetail_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_leaves_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloB:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksTopiary:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sand_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksGrounds:string=value";
dataStructure -fmt "raw" -as "name=notes_baseForest:string=value";
dataStructure -fmt "raw" -as "name=notes_vgtCampfire_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_terraceBush_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_center_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_Suelo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloP1:string=value";
dataStructure -fmt "raw" -as "name=notes_treesB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_new_sand:string=value";
dataStructure -fmt "raw" -as "name=notes_stairs_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassRightMountains:string=value";
dataStructure -fmt "raw" -as "name=notes_scatterGround:string=value";
dataStructure -fmt "raw" -as "name=mapManager_new_sand:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloP1:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane4:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesGrasStairs_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTopiary_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_base:string=value";
dataStructure -fmt "raw" -as "name=mapManager_juneBackYard:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane1:string=value";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_floor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_suelo:string=value";
dataStructure -fmt "raw" -as "name=notes_grassBeauty_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloC:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_CombinedGrass:string=value";
dataStructure -fmt "raw" -as "name=notes_rightExterior_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_base_right:string=value";
dataStructure -fmt "raw" -as "name=notes_groundC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayCircular_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_testMode_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_backWall_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_restaurantFront:string=value";
dataStructure -fmt "raw" -as "name=notes_vegetation_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsRight:string=value";
dataStructure -fmt "raw" -as "name=mapManager_square_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksCurbsGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_square_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloP2:string=value";
dataStructure -fmt "raw" -as "name=mapManager_throwbotLeftScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_vgTFicus39:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainsRight:string=value";
dataStructure -fmt "raw" -as "name=notes_bridge_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_ground:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantFront:string=value";
dataStructure -fmt "raw" -as "name=mapManager_rocskLeftPLA:string=value";
dataStructure -fmt "raw" -as "name=mapManager_strap_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloA:string=value";
dataStructure -fmt "raw" -as "name=notes_leaves:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane6:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorOrangeConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_railes:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesTrees_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloB:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_grassCenter_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_trees_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainCSB:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwayRocket_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_det:string=value";
dataStructure -fmt "raw" -as "name=mapManager_level1B_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_ground03_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTopiary:string=value";
dataStructure -fmt "raw" -as "name=notes_concretePath_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_level1A:string=value";
dataStructure -fmt "raw" -as "name=mapManager_backgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_stoneFloor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassC_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_trees_left:string=value";
dataStructure -fmt "raw" -as "name=mapManager_path:string=value";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=notes_ferns_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grasses:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayMain_Flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_squareRocks_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_road_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_baseScatter:string=value";
dataStructure -fmt "raw" -as "name=notes_chocolateFountain_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesCDetail_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwaySpaceland_Main_Leaves:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_slideSundaeRightScatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_ground03_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_grassCampfire_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane5:string=value";
dataStructure -fmt "raw" -as "name=notes_floorFlower:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantFront_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_treesRocksAnimalHome_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_level1A:string=value";
dataStructure -fmt "raw" -as "name=notes_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantBack_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassCDecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_leftSpecific_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersSquare:string=value";
dataStructure -fmt "raw" -as "name=notes_floorScatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_cheat_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_leavesDecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_terracesSuelo:string=value";
dataStructure -fmt "raw" -as "name=notes_fountainHA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grass:string=value";
dataStructure -fmt "raw" -as "name=mapManager_original:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksTopiary_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane1:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchG_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_rockSignRollo:string=value";
dataStructure -fmt "raw" -as "name=notes_grassA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_small:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_Scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksGrounds:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane:string=value";
dataStructure -fmt "raw" -as "name=mapManager_ground:string=value";
dataStructure -fmt "raw" -as "name=notes_rocskLeftPLA:string=value";
dataStructure -fmt "raw" -as "name=notes_bushes_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantBack:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_grassScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_groundPlane_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_widlPatchB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassD_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_amp_lyref_cmp0010_layGround:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwaySquare_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_sand_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_frogEntrance_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_throwbotLeft_scatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundPlane_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwayMain_Flowers:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_CombinedGrass:string=value";
dataStructure -fmt "raw" -as "name=notes_ground_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_backgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_big_back:string=value";
dataStructure -fmt "raw" -as "name=notes_geos:string=value";
dataStructure -fmt "raw" -as "name=notes_tunnelParkEntrance_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassB_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersMain_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayMain_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseForest:string=value";
dataStructure -fmt "raw" -as "name=notes_grassB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayRocket_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_small:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloA9:string=value";
dataStructure -fmt "raw" -as "name=notes_groundA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayRocket:string=value";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=mapManager_grass_Scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainCSB:string=value";
dataStructure -fmt "raw" -as "name=notes_grassRightMountains:string=value";
dataStructure -fmt "raw" -as "name=notes_baseLeaves:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane2:string=value";
dataStructure -fmt "raw" -as "name=notes_grassBDecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantNextHouse_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floor_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_throwbotLeftScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_terraces_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sidewalkGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_circular:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseLeaves:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_trees:string=value";
dataStructure -fmt "raw" -as "name=mapManager_amp_lyref_cmp0010_layGround:string=value";
dataStructure -fmt "raw" -as "name=notes_levelUnoC_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwaySpaceland_Main_Leaves:string=value";
dataStructure -fmt "raw" -as "name=mapManager_midgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_stoneFloor_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane3:string=value";
dataStructure -fmt "raw" -as "name=notes_floorConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base_right:string=value";
dataStructure -fmt "raw" -as "name=notes_polySurface56:string=value";
dataStructure -fmt "raw" -as "name=notes_path:string=value";
dataStructure -fmt "raw" -as "name=mapManager_concretePath_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_suelofuente:string=value";
dataStructure -fmt "raw" -as "name=notes_midground_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_Combined1:string=value";
dataStructure -fmt "raw" -as "name=notes_rockSignRollo_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_juneNbhHouseE_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloA8:string=value";
dataStructure -fmt "raw" -as "name=mapManager_trees_left1:string=value";
dataStructure -fmt "raw" -as "name=notes_groundWoods_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=notes_railwayGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_mainStreetMainstreetTrees04:string=value";
dataStructure -fmt "raw" -as "name=RenderSettings:string=preset";
dataStructure -fmt "raw" -as "name=notes_drawBridge_physPivot:string=value";
dataStructure -fmt "raw" -as "name=notes_grassD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_Combined1:string=value";
dataStructure -fmt "raw" -as "name=notes_decayFlowerBeds_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaC_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorA:string=value";
dataStructure -fmt "raw" -as "name=notes_groundWoods_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_throwbotLeft_scatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_det:string=value";
dataStructure -fmt "raw" -as "name=mapManager_leaves:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesGrassDetail_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_polySurface56:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTielMainStreet_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_level1A_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_ground_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_holeRock_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_drawBridge_physPivot:string=value";
dataStructure -fmt "raw" -as "name=mapManager_stoneFloor:string=value";
dataStructure -fmt "raw" -as "name=notes_grassBase:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloProvi3:string=value";
dataStructure -fmt "raw" -as "name=notes_vgFCarouselBed_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_groundD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane6:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorSquare:string=value";
dataStructure -fmt "raw" -as "name=mapManager_arbustosScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsCSC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_decayLeavesFlowerBed_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass:string=value";
dataStructure -fmt "raw" -as "name=notes_decayLeaves_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainCSC:string=value";
dataStructure -fmt "raw" -as "name=mapManager_railes:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesFlowers_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloP2:string=value";
dataStructure -fmt "raw" -as "name=notes_floorA:string=value";
dataStructure -fmt "raw" -as "name=notes_tunnel:string=value";
dataStructure -fmt "raw" -as "name=notes_backWall_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_ridePiggy_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_Combined2:string=value";
dataStructure -fmt "raw" -as "name=notes_groundRocks:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_level1B_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_original:string=value";
dataStructure -fmt "raw" -as "name=notes_rocks:string=value";
dataStructure -fmt "raw" -as "name=notes_background_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloA8:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane5:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassesCenter_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_left_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundWoods_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_geos:string=value";
dataStructure -fmt "raw" -as "name=mapManager_degraded:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwaySquareFlowers_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainCSA:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesRight_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_curbsGarden_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesFront_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_suelo:string=value";
dataStructure -fmt "raw" -as "name=notes_carouselStairs_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floorGrassA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_rockCheated_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesMountainsGrass_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchE_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_levelUnoB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchC_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorFlower:string=value";
dataStructure -fmt "raw" -as "name=mapManager_suelofuente:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassC_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_tilesFloorDet:string=value";
dataStructure -fmt "raw" -as "name=notes_slopes:string=value";
dataStructure -fmt "raw" -as "name=notes_grassADecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_hotelBack_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_treesRocksHA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_rockSignRollo:string=value";
dataStructure -fmt "raw" -as "name=notes_slabsAndStairsGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_wasteLand_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_vgGroundB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassD_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_square_ground:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchF_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_trees_left:string=value";
dataStructure -fmt "raw" -as "name=notes_heroesChoice_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_mountains_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassLeftMountains_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainCSC:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayArea_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyFlowersBedA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_riverSideground:string=value";
dataStructure -fmt "raw" -as "name=notes_slideSundaeRight_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseScatter:string=value";
dataStructure -fmt "raw" -as "name=notes_midgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_floor_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_floorSquare:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane3:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane2:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base_hojas:string=value";
dataStructure -fmt "raw" -as "name=notes_levelC:string=value";
dataStructure -fmt "raw" -as "name=notes_concretesGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassBase:string=value";
dataStructure -fmt "raw" -as "name=notes_square_floor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base_left:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_Combined2:string=value";
dataStructure -fmt "raw" -as "name=notes_bushesA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersRightLeft_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopes_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundRocks:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchH_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassA_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_juneBackYard:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_fountainRight_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassRightMountains_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersHA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassB_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_trees:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slideSundaeRightScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_small_grass:string=value";
dataStructure -fmt "raw" -as "name=notes_sidewalkGrassB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassD_Combined1:string=value";
dataStructure -fmt "raw" -as "name=mapManager_restaurantBack:string=value";
dataStructure -fmt "raw" -as "name=mapManager_levelC:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainCSA:string=value";
dataStructure -fmt "raw" -as "name=notes_decayLeavesCarousel_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_groundB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_road_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesMountainsGrass_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainTrail_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_tunnel:string=value";
dataStructure -fmt "raw" -as "name=mapManager_flowersSquare:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloC:string=value";
dataStructure -fmt "raw" -as "name=mapManager_riverSide:string=value";
dataStructure -fmt "raw" -as "name=notes_grassC_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopes:string=value";
dataStructure -fmt "raw" -as "name=notes_terraceGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_riverSide:string=value";
dataStructure -fmt "raw" -as "name=mapManager_big_back:string=value";
dataStructure -fmt "raw" -as "name=mapManager_square_ground:string=value";
dataStructure -fmt "raw" -as "name=mapManager_small_grass:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaCorner_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayRocket_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_barbacueHouseFront_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksFence_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_baseScatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_stairs_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksTielMainStreet_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_stoneFloorGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_trees_left1:string=value";
dataStructure -fmt "raw" -as "name=notes_levelUnoA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_rockTerraces_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_curbsGardenGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_frogL_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwayRocket:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloA9:string=value";
dataStructure -fmt "raw" -as "name=notes_grasses:string=value";
dataStructure -fmt "raw" -as "name=notes_base_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassJuneBackYard_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesSuelo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassD_Combined1:string=value";
dataStructure -fmt "raw" -as "name=notes_frogLeft_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_base_hojas:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorCampfire:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_arbustosScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_slideSundaeLeft_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_entrance_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_rocks:string=value";
dataStructure -fmt "raw" -as "name=notes_strap_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksFence_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_base_left:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksGround:string=value";
dataStructure -fmt "raw" -as "name=notes_centerStreetGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundWoods_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassA_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_riverside_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassGround_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_right_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_road_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floorOrangeGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floorOrangeConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_level1A_c_geo:string=value";
// End of testscene.ma
