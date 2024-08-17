//Maya ASCII 2022 scene
//Name: lou_HIK.ma
//Last modified: Sat, Aug 17, 2024 04:01:17 PM
//Codeset: 1252
file -rdi 1 -ns "lou" -rfn "louRN" -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/pythonlearning/Projects/2024_TechArtDemo/OnlineMaterials/Lou_rig/lou_edit.ma";
file -r -ns "lou" -dr 1 -rfn "louRN" -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/pythonlearning/Projects/2024_TechArtDemo/OnlineMaterials/Lou_rig/lou_edit.ma";
requires maya "2022";
requires -nodeType "HIKCharacterNode" -nodeType "HIKProperty2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2018.11";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 22631)";
fileInfo "UUID" "2FEDC597-46C8-76B2-0A84-A78D30338FBE";
createNode transform -s -n "persp";
	rename -uid "0B5E58A4-4887-5088-5335-8D8876799C81";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 144.60233088089626 191.36841401824472 339.1492842490677 ;
	setAttr ".r" -type "double3" -14.738352729604022 20.999999999999872 -4.2585440300480733e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A2D23A18-4BB5-5562-9D05-BCBDC797BD4B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 374.1179054112614;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.56055100325829699 95.082628677061393 18.132272835109795 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "7E00ADB5-4CB2-7641-3459-65ABA8AC7D25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "216B571D-4394-BD13-A8ED-24BB61A0E04C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 154.01868516127919;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2D2AD32E-4A0F-9F2B-71B2-A8B760A87871";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3592520465728919 148.52444862588291 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DE8C7912-4D7F-ADF5-21B3-38886004772A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 121.17910028396528;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E134DB2F-4229-22F3-D644-ED8CEE88459A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6219D7B4-462E-FFE6-72EB-F5BC7038F253";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "50D2EC5D-4662-8D9F-72D4-71B40BD4553C";
	setAttr -s 28 ".lnk";
	setAttr -s 28 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "12575A5E-4F50-0443-1B8E-ED8E59390A8F";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "03ABE9C4-4019-7E64-D1BA-B48C7D63F71D";
	setAttr ".tpdt[0].tpcd" -type "Int32Array" 1 0 ;
createNode displayLayerManager -n "layerManager";
	rename -uid "F4C5926F-492C-E0E4-032D-3DB223FCC3BD";
createNode displayLayer -n "defaultLayer";
	rename -uid "276680F1-4A73-393B-BF12-54A5F5DE1A59";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "009C0F13-4B92-DE38-E379-129F82F5F212";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "98940568-4460-FA30-3DB2-0FA6FEFC82B6";
	setAttr ".g" yes;
createNode reference -n "louRN";
	rename -uid "D6B67BBB-4DEF-55D5-8FFF-D5BF416DE197";
	setAttr ".fn[0]" -type "string" "D:/Admin/Python/pythonlearning/Projects/2024_TechArtDemo/OnlineMaterials/Lou_rig/lou.ma";
	setAttr -s 32 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"louRN"
		"louRN" 0
		"louRN" 199
		1 |lou:Group|lou:Main|lou:DeformationSystem "Character" "ch" " -s 0 -ci 1 -at \"message\""
		
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M "Character" "ch" " -s 0 -ci 1 -at \"message\""
		
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R "Character" 
		"ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R|lou:KneePart1_R|lou:Ankle_R 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M "Character" 
		"ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R|lou:ElbowPart1_R|lou:Wrist_R 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M|lou:Head_M 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L|lou:ElbowPart1_L|lou:Wrist_L 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L "Character" 
		"ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		1 |lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L|lou:KneePart1_L|lou:Ankle_L 
		"Character" "ch" " -s 0 -ci 1 -at \"message\""
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_R|lou:FKOffsetShoulder_R|lou:FKGlobalStaticShoulder_R|lou:FKGlobalShoulder_R|lou:FKExtraShoulder_R|lou:FKShoulder_R" 
		"rotate" " -type \"double3\" 0.97153064585533877 -48.39561963011151136 -13.6216067679723043"
		
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_R|lou:FKOffsetShoulder_R|lou:FKGlobalStaticShoulder_R|lou:FKGlobalShoulder_R|lou:FKExtraShoulder_R|lou:FKShoulder_R|lou:FKXShoulder_R|lou:FKOffsetElbow_R|lou:FKExtraElbow_R|lou:FKElbow_R" 
		"rotate" " -type \"double3\" 0 0 -12.06222160158520751"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_L|lou:FKOffsetShoulder_L|lou:FKGlobalStaticShoulder_L|lou:FKGlobalShoulder_L|lou:FKExtraShoulder_L|lou:FKShoulder_L" 
		"rotate" " -type \"double3\" 0.97153064585533877 -48.39561963011151136 -13.6216067679723043"
		
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_L|lou:FKOffsetShoulder_L|lou:FKGlobalStaticShoulder_L|lou:FKGlobalShoulder_L|lou:FKExtraShoulder_L|lou:FKShoulder_L|lou:FKXShoulder_L|lou:FKOffsetElbow_L|lou:FKExtraElbow_L|lou:FKElbow_L" 
		"rotate" " -type \"double3\" 0 0 -12.06222160158520751"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_L|lou:FKOffsetShoulder_L|lou:FKGlobalStaticShoulder_L|lou:FKGlobalShoulder_L|lou:FKExtraShoulder_L|lou:FKShoulder_L|lou:FKXShoulder_L|lou:FKOffsetElbow_L|lou:FKExtraElbow_L|lou:FKElbow_L" 
		"rotateX" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_L|lou:FKOffsetShoulder_L|lou:FKGlobalStaticShoulder_L|lou:FKGlobalShoulder_L|lou:FKExtraShoulder_L|lou:FKShoulder_L|lou:FKXShoulder_L|lou:FKOffsetElbow_L|lou:FKExtraElbow_L|lou:FKElbow_L" 
		"rotateY" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:FKSystem|lou:FKParentConstraintToScapula_L|lou:FKOffsetShoulder_L|lou:FKGlobalStaticShoulder_L|lou:FKGlobalShoulder_L|lou:FKExtraShoulder_L|lou:FKShoulder_L|lou:FKXShoulder_L|lou:FKOffsetElbow_L|lou:FKExtraElbow_L|lou:FKElbow_L" 
		"rotateZ" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_R|lou:IKXOffsetHip_R|lou:IKXHip_R" 
		"rotate" " -type \"double3\" 0 0 -1.9618224787422008e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_R|lou:IKXOffsetHip_R|lou:IKXHip_R|lou:IKXKnee_R" 
		"rotate" " -type \"double3\" 0 0 4.3341976417980836e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_R|lou:IKXOffsetHip_R|lou:IKXHip_R|lou:IKXKnee_R|lou:IKXAnkle_R|lou:IKXToes_R" 
		"rotate" " -type \"double3\" -9.7285872785751575e-07 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_R|lou:IKXOffsetShoulder_R|lou:IKXShoulder_R" 
		"rotate" " -type \"double3\" 0 0 1.1326587362040651e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_R|lou:IKXOffsetShoulder_R|lou:IKXShoulder_R|lou:IKXElbow_R" 
		"rotate" " -type \"double3\" 0 0 -2.3753379292515365e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintRoot_M|lou:IKfake0Spine_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintRoot_M|lou:IKfake0Spine_M" 
		"rotate" " -type \"double3\" 0 0 -4.24382876916221452"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintRoot_M|lou:IKfake0Spine_M|lou:IKSpRootPart1_M|lou:IKSpSpine1_M" 
		"rotate" " -type \"double3\" 0 0 8.8936113623518942"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_L|lou:IKXOffsetHip_L|lou:IKXHip_L" 
		"rotate" " -type \"double3\" -1.2048456137517585e-06 7.8777694118340966e-08 -1.965534539814672e-05"
		
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_L|lou:IKXOffsetHip_L|lou:IKXHip_L|lou:IKXKnee_L" 
		"rotate" " -type \"double3\" 0 0 4.3341978382028535e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_L|lou:IKXOffsetHip_L|lou:IKXHip_L|lou:IKXKnee_L|lou:IKXAnkle_L|lou:IKXToes_L" 
		"rotate" " -type \"double3\" -9.6675819497853161e-07 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_L|lou:IKXOffsetShoulder_L|lou:IKXShoulder_L" 
		"rotate" " -type \"double3\" 0 0 1.1358719589327517e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_L|lou:IKXOffsetShoulder_L|lou:IKXShoulder_L|lou:IKXElbow_L" 
		"rotate" " -type \"double3\" 0 0 -2.3753371875925203e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKHandle|lou:IKSpineHandle_M" 
		"translate" " -type \"double3\" 0 128.37552222901584287 -1.23756491395251933"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKHandle|lou:IKSpineHandle_M" 
		"rotate" " -type \"double3\" 89.99999999999994316 -7.0188957514744823 89.99999999999994316"
		
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetAnkle_R|lou:TwistFollowParentAnkle_R|lou:UnTwistAnkle_R" 
		"rotate" " -type \"double3\" 0 -1.118473700846697e-06 -1.9436880533616078e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetKnee_R|lou:TwistFollowParentKnee_R|lou:UnTwistKnee_R" 
		"rotate" " -type \"double3\" 0 0 4.3341102482401645e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetHip_R|lou:TwistFollowParentHip_R|lou:UnTwistHip_R" 
		"rotate" " -type \"double3\" 0 0 -1.9618224787422008e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetElbow_R|lou:TwistFollowParentElbow_R|lou:UnTwistElbow_R" 
		"rotate" " -type \"double3\" 0 0 -12.06222160158512757"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetShoulder_R|lou:TwistFollowParentShoulder_R|lou:UnTwistShoulder_R" 
		"rotate" " -type \"double3\" 9.05849538635085594 -46.27098838391869151 -21.00669359088033517"
		
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetAnkle_L|lou:TwistFollowParentAnkle_L|lou:UnTwistAnkle_L" 
		"rotate" " -type \"double3\" 0 -1.1188944568000347e-06 -1.9361706167999676e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetKnee_L|lou:TwistFollowParentKnee_L|lou:UnTwistKnee_L" 
		"rotate" " -type \"double3\" 0 0 4.3341102482401645e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetHip_L|lou:TwistFollowParentHip_L|lou:UnTwistHip_L" 
		"rotate" " -type \"double3\" 0 0 -1.9655345397318433e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetElbow_L|lou:TwistFollowParentElbow_L|lou:UnTwistElbow_L" 
		"rotate" " -type \"double3\" 0 0 -12.06222160158524837"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetShoulder_L|lou:TwistFollowParentShoulder_L|lou:UnTwistShoulder_L" 
		"rotate" " -type \"double3\" 9.05849538635083107 -46.2709883839185494 -21.00669359088034582"
		
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M" "side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M" "type" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R" "side" 
		" 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R" "type" 
		" 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R" 
		"side" " 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R" 
		"type" " 3"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R|lou:KneePart1_R|lou:Ankle_R" 
		"side" " 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R|lou:KneePart1_R|lou:Ankle_R" 
		"type" " 4"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M" 
		"type" " 6"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M" 
		"type" " 6"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M" 
		"type" " 6"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M" 
		"type" " 6"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R" 
		"side" " 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R" 
		"type" " 9"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R" 
		"side" " 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R" 
		"type" " 10"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R" 
		"side" " 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R" 
		"type" " 11"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R|lou:ElbowPart1_R|lou:Wrist_R" 
		"side" " 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R|lou:ElbowPart1_R|lou:Wrist_R" 
		"type" " 12"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M" 
		"type" " 7"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M" 
		"type" " 7"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M" 
		"type" " 7"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M|lou:Head_M" 
		"side" " 0"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M|lou:Head_M" 
		"type" " 8"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L" 
		"side" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L" 
		"type" " 9"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L" 
		"side" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L" 
		"type" " 10"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L" 
		"side" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L" 
		"type" " 11"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L|lou:ElbowPart1_L|lou:Wrist_L" 
		"side" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L|lou:ElbowPart1_L|lou:Wrist_L" 
		"type" " 12"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L" "side" 
		" 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L" "type" 
		" 2"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L" 
		"side" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L" 
		"type" " 3"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L|lou:KneePart1_L|lou:Ankle_L" 
		"side" " 1"
		2 "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L|lou:KneePart1_L|lou:Ankle_L" 
		"type" " 4"
		2 "|lou:Group|lou:Geometry|lou:high|lou:highlights|lou:highlightsShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:eyein_L|lou:eyein_LShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:eyein_R|lou:eyein_RShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:jaw_down|lou:jaw_downShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:jaw_up|lou:jaw_upShapeDeformed" "visibility" 
		" -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:tongue|lou:tongueShapeDeformed" "visibility" 
		" -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:eyeout_L|lou:eyeout_LShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:eyeout_R|lou:eyeout_RShapeDeformed" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:shoes1|lou:shoes1Shape" "visibility" 
		" -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:button|lou:buttonShapeDeformed" "visibility" 
		" -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:tshirt|lou:tshirtShapeDeformed" "visibility" 
		" -k 0 1"
		2 "|lou:Group|lou:Geometry|lou:high|lou:panties1|lou:panties1Shape" "visibility" 
		" -k 0 1"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:EyeLidLayer|lou:EyeLidLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:EyeBrowLayer|lou:EyeBrowLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:LipLayer|lou:LipLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:JawLayer|lou:JawLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:NoseLayer|lou:NoseLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:SmilePullLayer|lou:SmilePullLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:SmileBulgeLayer|lou:SmileBulgeLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:CheekRaiserLayer|lou:CheekRaiserLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:MouthNarrowLayer|lou:MouthNarrowLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:CheekLayer|lou:CheekLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:RegionsLayer|lou:RegionsLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:UpMidLoLayer|lou:UpMidLoLayerShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:UpMidLoLayer_hair|lou:UpMidLoLayer_hairShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:UpMidLoLayer_brows|lou:UpMidLoLayer_browsShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:UpMidLoLayer_corners|lou:UpMidLoLayer_cornersShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:EyeBrowLayer_brows|lou:EyeBrowLayer_browsShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:RegionsLayer_brows|lou:RegionsLayer_browsShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:EyeLidLayer_lashes|lou:EyeLidLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:CheekRaiserLayer_lashes|lou:CheekRaiserLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:RegionsLayer_lashes|lou:RegionsLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:DeformationLayers|lou:UpMidLoLayer_lashes|lou:UpMidLoLayer_lashesShapeDeformed" 
		"visibility" " -k 0 0"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:FaceDeformationSetups|lou:LipSetup|lou:upperLipCenterPlane|lou:upperLipCenterPlaneShape" 
		"visibility" " -k 0 1"
		2 "|lou:Group|lou:FaceGroup|lou:FaceDeformationSystem|lou:FaceDeformationSetups|lou:LipSetup|lou:lowerLipCenterPlane|lou:lowerLipCenterPlaneShape" 
		"visibility" " -k 0 1"
		2 "lou:asFaceBS_model_lashes" "midLayerParent" " 0"
		2 "lou:faceAdditional" "envelope" " -av 1"
		2 "lou:faceAdditional" "midLayerParent" " 0"
		2 "lou:bodyAdditional" "midLayerParent" " 0"
		2 "lou:browsAdditional" "midLayerParent" " 0"
		2 "lou:asFaceBS" "midLayerParent" " 0"
		2 "lou:upperLidCurveCloseBS_R" "envelope" " -av 1"
		2 "lou:upperLidCurveCloseBS_R" "midLayerParent" " 0"
		2 "lou:closedLidCurveCloseBS_R" "midLayerParent" " 0"
		2 "lou:lowerLidCurveCloseBS_R" "envelope" " -av 1"
		2 "lou:lowerLidCurveCloseBS_R" "midLayerParent" " 0"
		2 "lou:upperLidCurveCloseBS_L" "envelope" " -av 1"
		2 "lou:upperLidCurveCloseBS_L" "midLayerParent" " 0"
		2 "lou:closedLidCurveCloseBS_L" "midLayerParent" " 0"
		2 "lou:lowerLidCurveCloseBS_L" "envelope" " -av 1"
		2 "lou:lowerLidCurveCloseBS_L" "midLayerParent" " 0"
		2 "lou:upperLidCloseAutoShapeBS_R" "envelope" " -av 1"
		2 "lou:upperLidCloseAutoShapeBS_R" "midLayerParent" " 0"
		2 "lou:lowerLidCloseAutoShapeBS_R" "envelope" " -av 1"
		2 "lou:lowerLidCloseAutoShapeBS_R" "midLayerParent" " 0"
		2 "lou:upperLidCloseAutoShapeBS_L" "envelope" " -av 1"
		2 "lou:upperLidCloseAutoShapeBS_L" "midLayerParent" " 0"
		2 "lou:lowerLidCloseAutoShapeBS_L" "envelope" " -av 1"
		2 "lou:lowerLidCloseAutoShapeBS_L" "midLayerParent" " 0"
		2 "lou:SquintRightToLeftBS" "envelope" " -av 1"
		2 "lou:SquintRightToLeftBS" "midLayerParent" " 0"
		2 "lou:asFaceBS_hair" "midLayerParent" " 0"
		2 "lou:asFaceBS_brows" "midLayerParent" " 0"
		2 "lou:asFaceBS_corners" "midLayerParent" " 0"
		2 "lou:asFaceBS_lashes" "midLayerParent" " 0"
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.translateX" 
		"louRN.placeHolderList[1]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.translateY" 
		"louRN.placeHolderList[2]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.translateZ" 
		"louRN.placeHolderList[3]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.rotateX" 
		"louRN.placeHolderList[4]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.rotateY" 
		"louRN.placeHolderList[5]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.rotateZ" 
		"louRN.placeHolderList[6]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.legLock" 
		"louRN.placeHolderList[7]" ""
		5 4 "louRN" "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M|lou:RootOffsetX_M|lou:RootExtraX_M|lou:RootX_M.CenterBtwFeet" 
		"louRN.placeHolderList[8]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem.Character" "louRN.placeHolderList[9]" 
		""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M.Character" 
		"louRN.placeHolderList[10]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R.Character" 
		"louRN.placeHolderList[11]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R.Character" 
		"louRN.placeHolderList[12]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_R|lou:HipPart1_R|lou:HipPart2_R|lou:Knee_R|lou:KneePart1_R|lou:Ankle_R.Character" 
		"louRN.placeHolderList[13]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M.Character" 
		"louRN.placeHolderList[14]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M.Character" 
		"louRN.placeHolderList[15]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M.Character" 
		"louRN.placeHolderList[16]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M.Character" 
		"louRN.placeHolderList[17]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R.Character" 
		"louRN.placeHolderList[18]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R.Character" 
		"louRN.placeHolderList[19]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R.Character" 
		"louRN.placeHolderList[20]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_R|lou:Shoulder_R|lou:ShoulderPart1_R|lou:Elbow_R|lou:ElbowPart1_R|lou:Wrist_R.Character" 
		"louRN.placeHolderList[21]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M.Character" 
		"louRN.placeHolderList[22]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M.Character" 
		"louRN.placeHolderList[23]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M.Character" 
		"louRN.placeHolderList[24]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Neck_M|lou:NeckPart1_M|lou:NeckPart2_M|lou:Head_M.Character" 
		"louRN.placeHolderList[25]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L.Character" 
		"louRN.placeHolderList[26]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L.Character" 
		"louRN.placeHolderList[27]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L.Character" 
		"louRN.placeHolderList[28]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:RootPart1_M|lou:Spine1_M|lou:Spine1Part1_M|lou:Chest_M|lou:Scapula_L|lou:Shoulder_L|lou:ShoulderPart1_L|lou:Elbow_L|lou:ElbowPart1_L|lou:Wrist_L.Character" 
		"louRN.placeHolderList[29]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L.Character" 
		"louRN.placeHolderList[30]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L.Character" 
		"louRN.placeHolderList[31]" ""
		5 3 "louRN" "|lou:Group|lou:Main|lou:DeformationSystem|lou:Root_M|lou:Hip_L|lou:HipPart1_L|lou:HipPart2_L|lou:Knee_L|lou:KneePart1_L|lou:Ankle_L.Character" 
		"louRN.placeHolderList[32]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2D29E5FF-4781-8373-0704-6EA8922B91CE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 591\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 590\n            -height 328\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 591\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1188\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
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
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1188\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1188\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2FD98F7B-444E-2B0F-2162-B5BDC520F35F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 25 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode HIKCharacterNode -n "lou1";
	rename -uid "9D3CE8BC-409D-2FB4-0DD2-81AB6C1DBF23";
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTx" 1.9636334330729782e-15;
	setAttr ".HipsTy" 101.04593480337562;
	setAttr ".HipsTz" -2.3682557215834441;
	setAttr ".HipsRx" 90;
	setAttr ".HipsRy" -6.6129418982075858;
	setAttr ".HipsRz" 90;
	setAttr ".HipsSz" 1.0000000000000002;
	setAttr ".HipsJointOrientx" 89.999999999999929;
	setAttr ".HipsJointOrienty" -6.6129418982075912;
	setAttr ".HipsJointOrientz" 89.999999999999929;
	setAttr ".HipsMinRLimitx" -360;
	setAttr ".HipsMinRLimity" -360;
	setAttr ".HipsMinRLimitz" -360;
	setAttr ".HipsMaxRLimitx" 360;
	setAttr ".HipsMaxRLimity" 360;
	setAttr ".HipsMaxRLimitz" 360;
	setAttr ".LeftUpLegTx" 7.9314908655433198;
	setAttr ".LeftUpLegTy" 104.19369295860366;
	setAttr ".LeftUpLegTz" -2.3401041235961832;
	setAttr ".LeftUpLegRx" -89.412866662001221;
	setAttr ".LeftUpLegRy" 0.68668120596431836;
	setAttr ".LeftUpLegRz" 88.291182809646898;
	setAttr ".LeftUpLegSx" 1.0000000000000002;
	setAttr ".LeftUpLegSz" 1.0000000000000002;
	setAttr ".LeftUpLegRotateOrder" 2;
	setAttr ".LeftUpLegJointOrientx" -179.39238057831804;
	setAttr ".LeftUpLegJointOrienty" -1.7086942226565442;
	setAttr ".LeftUpLegJointOrientz" -7.2999482525718093;
	setAttr ".LeftUpLegMinRLimitx" -360;
	setAttr ".LeftUpLegMinRLimity" -360;
	setAttr ".LeftUpLegMinRLimitz" -360;
	setAttr ".LeftUpLegMaxRLimitx" 360;
	setAttr ".LeftUpLegMaxRLimity" 360;
	setAttr ".LeftUpLegMaxRLimitz" 360;
	setAttr ".LeftLegTx" 6.3502854389045025;
	setAttr ".LeftLegTy" 51.192392072511957;
	setAttr ".LeftLegTz" -1.7045785469818229;
	setAttr ".LeftLegRx" -89.407802994268593;
	setAttr ".LeftLegRy" -7.5290958597905187;
	setAttr ".LeftLegRz" 88.206547946159574;
	setAttr ".LeftLegSz" 1.0000000000000002;
	setAttr ".LeftLegRotateOrder" 2;
	setAttr ".LeftLegJointOrientz" -8.2162540236365995;
	setAttr ".LeftLegMinRLimitx" -360;
	setAttr ".LeftLegMinRLimity" -360;
	setAttr ".LeftLegMinRLimitz" -360;
	setAttr ".LeftLegMaxRLimitx" 360;
	setAttr ".LeftLegMaxRLimity" 360;
	setAttr ".LeftLegMaxRLimitz" 360;
	setAttr ".LeftFootTx" 4.9745667896647108;
	setAttr ".LeftFootTy" 7.256382082201501;
	setAttr ".LeftFootTz" -7.5144097310560447;
	setAttr ".LeftFootRx" -86.707346581006604;
	setAttr ".LeftFootRz" 90;
	setAttr ".LeftFootSx" 0.99999999999999711;
	setAttr ".LeftFootSy" 0.99999999999999734;
	setAttr ".LeftFootRotateOrder" 3;
	setAttr ".LeftFootJointOrientx" 2.7052981960569098;
	setAttr ".LeftFootJointOrienty" -1.7157638683457372;
	setAttr ".LeftFootJointOrientz" 7.5471038559697199;
	setAttr ".LeftFootMinRLimitx" -360;
	setAttr ".LeftFootMinRLimity" -360;
	setAttr ".LeftFootMinRLimitz" -360;
	setAttr ".LeftFootMaxRLimitx" 360;
	setAttr ".LeftFootMaxRLimity" 360;
	setAttr ".LeftFootMaxRLimitz" 360;
	setAttr ".RightUpLegTx" -7.9314908655433225;
	setAttr ".RightUpLegTy" 104.19369295860359;
	setAttr ".RightUpLegTz" -2.340104123596177;
	setAttr ".RightUpLegRx" 90.587133338003454;
	setAttr ".RightUpLegRy" -0.68668124308301082;
	setAttr ".RightUpLegRz" -88.29118281002728;
	setAttr ".RightUpLegSz" 1.0000000000000002;
	setAttr ".RightUpLegRotateOrder" 2;
	setAttr ".RightUpLegJointOrientx" -179.39238057831804;
	setAttr ".RightUpLegJointOrienty" -1.7086942226566977;
	setAttr ".RightUpLegJointOrientz" 172.70005174742818;
	setAttr ".RightUpLegMinRLimitx" -360;
	setAttr ".RightUpLegMinRLimity" -360;
	setAttr ".RightUpLegMinRLimitz" -360;
	setAttr ".RightUpLegMaxRLimitx" 360;
	setAttr ".RightUpLegMaxRLimity" 360;
	setAttr ".RightUpLegMaxRLimitz" 360;
	setAttr ".RightLegTx" -6.3502854392685792;
	setAttr ".RightLegTy" 51.192392072913002;
	setAttr ".RightLegTz" -1.7045785126300284;
	setAttr ".RightLegRx" 90.592197005680816;
	setAttr ".RightLegRy" 7.5290958226713443;
	setAttr ".RightLegRz" -88.206547946546522;
	setAttr ".RightLegSy" 1.0000000000000002;
	setAttr ".RightLegSz" 1.0000000000000002;
	setAttr ".RightLegRotateOrder" 2;
	setAttr ".RightLegJointOrientz" -8.2162540236361039;
	setAttr ".RightLegMinRLimitx" -360;
	setAttr ".RightLegMinRLimity" -360;
	setAttr ".RightLegMinRLimitz" -360;
	setAttr ".RightLegMaxRLimitx" 360;
	setAttr ".RightLegMaxRLimity" 360;
	setAttr ".RightLegMaxRLimitz" 360;
	setAttr ".RightFootTx" -4.9745667902077386;
	setAttr ".RightFootTy" 7.256382078831372;
	setAttr ".RightFootTz" -7.5144096682279837;
	setAttr ".RightFootRx" 93.292653420104799;
	setAttr ".RightFootRz" -90;
	setAttr ".RightFootSx" 0.99999999999999722;
	setAttr ".RightFootSy" 0.99999999999999734;
	setAttr ".RightFootSz" 0.99999999999999989;
	setAttr ".RightFootRotateOrder" 3;
	setAttr ".RightFootJointOrientx" 2.7052981960567508;
	setAttr ".RightFootJointOrienty" -1.7157638683457708;
	setAttr ".RightFootJointOrientz" 7.5471038559700618;
	setAttr ".RightFootMinRLimitx" -360;
	setAttr ".RightFootMinRLimity" -360;
	setAttr ".RightFootMinRLimitz" -360;
	setAttr ".RightFootMaxRLimitx" 360;
	setAttr ".RightFootMaxRLimity" 360;
	setAttr ".RightFootMaxRLimitz" 360;
	setAttr ".SpineTx" -1.9347190994123789e-15;
	setAttr ".SpineTy" 108.14811737001092;
	setAttr ".SpineTz" -1.5448794104814494;
	setAttr ".SpineRx" 90;
	setAttr ".SpineRy" -6.6129418982075858;
	setAttr ".SpineRz" 90;
	setAttr ".SpineSz" 1.0000000000000002;
	setAttr ".SpineMinRLimitx" -360;
	setAttr ".SpineMinRLimity" -360;
	setAttr ".SpineMinRLimitz" -360;
	setAttr ".SpineMaxRLimitx" 360;
	setAttr ".SpineMaxRLimity" 360;
	setAttr ".SpineMaxRLimitz" 360;
	setAttr ".LeftArmTx" 13.916292827217582;
	setAttr ".LeftArmTy" 146.48834232676035;
	setAttr ".LeftArmTz" -2.9429942838446141;
	setAttr ".LeftArmRx" -106.36679564310037;
	setAttr ".LeftArmRy" 2.9089616278172086;
	setAttr ".LeftArmRz" 129.86317662896792;
	setAttr ".LeftArmSx" 1.0000000000000002;
	setAttr ".LeftArmSy" 1.0000000000000004;
	setAttr ".LeftArmRotateOrder" 5;
	setAttr ".LeftArmJointOrientx" 2.0931824981627996e-14;
	setAttr ".LeftArmJointOrienty" 33.309584555891213;
	setAttr ".LeftArmJointOrientz" 26.886996863861729;
	setAttr ".LeftArmMinRLimitx" -360;
	setAttr ".LeftArmMinRLimity" -360;
	setAttr ".LeftArmMinRLimitz" -360;
	setAttr ".LeftArmMaxRLimitx" 360;
	setAttr ".LeftArmMaxRLimity" 360;
	setAttr ".LeftArmMaxRLimitz" 360;
	setAttr ".LeftForeArmTx" 32.290926236572304;
	setAttr ".LeftForeArmTy" 124.4838044233714;
	setAttr ".LeftForeArmTz" -1.4862648202815283;
	setAttr ".LeftForeArmRx" -106.85249690910067;
	setAttr ".LeftForeArmRy" 13.89744999171899;
	setAttr ".LeftForeArmRz" 126.5557737151664;
	setAttr ".LeftForeArmSx" 1.0000000000000002;
	setAttr ".LeftForeArmSy" 1.0000000000000004;
	setAttr ".LeftForeArmRotateOrder" 5;
	setAttr ".LeftForeArmJointOrientx" 1.8574125044811226e-13;
	setAttr ".LeftForeArmJointOrienty" -3.7667055563616503e-14;
	setAttr ".LeftForeArmJointOrientz" 11.463730661603774;
	setAttr ".LeftForeArmMinRLimitx" -360;
	setAttr ".LeftForeArmMinRLimity" -360;
	setAttr ".LeftForeArmMinRLimitz" -360;
	setAttr ".LeftForeArmMaxRLimitx" 360;
	setAttr ".LeftForeArmMaxRLimity" 360;
	setAttr ".LeftForeArmMaxRLimitz" 360;
	setAttr ".LeftHandTx" 47.548935005803742;
	setAttr ".LeftHandTy" 103.90571263622151;
	setAttr ".LeftHandTz" 4.8522560524436606;
	setAttr ".LeftHandRx" -111.12667262249329;
	setAttr ".LeftHandRy" 13.249152671484087;
	setAttr ".LeftHandRz" 122.81879486942562;
	setAttr ".LeftHandSx" 1.0000000000000002;
	setAttr ".LeftHandSy" 1.0000000000000004;
	setAttr ".LeftHandRotateOrder" 5;
	setAttr ".LeftHandJointOrientx" -3.3820880999317922;
	setAttr ".LeftHandJointOrienty" 3.6610038337547048;
	setAttr ".LeftHandJointOrientz" 0.46156161396659728;
	setAttr ".LeftHandMinRLimitx" -360;
	setAttr ".LeftHandMinRLimity" -360;
	setAttr ".LeftHandMinRLimitz" -360;
	setAttr ".LeftHandMaxRLimitx" 360;
	setAttr ".LeftHandMaxRLimity" 360;
	setAttr ".LeftHandMaxRLimitz" 360;
	setAttr ".RightArmTx" -13.916292827217625;
	setAttr ".RightArmTy" 146.48834232676066;
	setAttr ".RightArmTz" -2.9429942838446781;
	setAttr ".RightArmRx" 73.633204356899711;
	setAttr ".RightArmRy" -2.9089616278172206;
	setAttr ".RightArmRz" -129.86317662896769;
	setAttr ".RightArmSy" 1.0000000000000002;
	setAttr ".RightArmSz" 1.0000000000000002;
	setAttr ".RightArmRotateOrder" 5;
	setAttr ".RightArmJointOrientx" 2.8543397702219988e-14;
	setAttr ".RightArmJointOrienty" 33.309584555891185;
	setAttr ".RightArmJointOrientz" 26.886996863861732;
	setAttr ".RightArmMinRLimitx" -360;
	setAttr ".RightArmMinRLimity" -360;
	setAttr ".RightArmMinRLimitz" -360;
	setAttr ".RightArmMaxRLimitx" 360;
	setAttr ".RightArmMaxRLimity" 360;
	setAttr ".RightArmMaxRLimitz" 360;
	setAttr ".RightForeArmTx" -32.29092623657197;
	setAttr ".RightForeArmTy" 124.48380442337121;
	setAttr ".RightForeArmTz" -1.4862648202818405;
	setAttr ".RightForeArmRx" 73.14750309089942;
	setAttr ".RightForeArmRy" -13.897449991719183;
	setAttr ".RightForeArmRz" -126.55577371516614;
	setAttr ".RightForeArmSx" 1.0000000000000002;
	setAttr ".RightForeArmSz" 1.0000000000000002;
	setAttr ".RightForeArmRotateOrder" 5;
	setAttr ".RightForeArmJointOrientz" 11.463730661603961;
	setAttr ".RightForeArmMinRLimitx" -360;
	setAttr ".RightForeArmMinRLimity" -360;
	setAttr ".RightForeArmMinRLimitz" -360;
	setAttr ".RightForeArmMaxRLimitx" 360;
	setAttr ".RightForeArmMaxRLimity" 360;
	setAttr ".RightForeArmMaxRLimitz" 360;
	setAttr ".RightHandTx" -47.548935005803685;
	setAttr ".RightHandTy" 103.90571263622147;
	setAttr ".RightHandTz" 4.852256052443483;
	setAttr ".RightHandRx" 68.873327377506314;
	setAttr ".RightHandRy" -13.249152671484547;
	setAttr ".RightHandRz" -122.81879486942573;
	setAttr ".RightHandSz" 1.0000000000000002;
	setAttr ".RightHandRotateOrder" 5;
	setAttr ".RightHandJointOrientx" -3.3820880999323366;
	setAttr ".RightHandJointOrienty" 3.6610038337542972;
	setAttr ".RightHandJointOrientz" 0.46156161396674034;
	setAttr ".RightHandMinRLimitx" -360;
	setAttr ".RightHandMinRLimity" -360;
	setAttr ".RightHandMinRLimitz" -360;
	setAttr ".RightHandMaxRLimitx" 360;
	setAttr ".RightHandMaxRLimity" 360;
	setAttr ".RightHandMaxRLimitz" 360;
	setAttr ".HeadTx" -3.7795200578224403e-14;
	setAttr ".HeadTy" 164.45120358994626;
	setAttr ".HeadTz" -0.49424669473134675;
	setAttr ".HeadRx" 90;
	setAttr ".HeadRy" -0.75370578926444665;
	setAttr ".HeadRz" 90;
	setAttr ".HeadSz" 1.0000000000000002;
	setAttr ".HeadRotateOrder" 5;
	setAttr ".HeadJointOrientz" -10.810493366984792;
	setAttr ".HeadMinRLimitx" -360;
	setAttr ".HeadMinRLimity" -360;
	setAttr ".HeadMinRLimitz" -360;
	setAttr ".HeadMaxRLimitx" 360;
	setAttr ".HeadMaxRLimity" 360;
	setAttr ".HeadMaxRLimitz" 360;
	setAttr ".LeftShoulderTx" 2.040257834221392;
	setAttr ".LeftShoulderTy" 149.00130878533312;
	setAttr ".LeftShoulderTz" 0.29430807644543533;
	setAttr ".LeftShoulderRx" -102.39002656820814;
	setAttr ".LeftShoulderRy" -14.932461274613704;
	setAttr ".LeftShoulderRz" 168.0524597365791;
	setAttr ".LeftShoulderSx" 1.0000000000000004;
	setAttr ".LeftShoulderSy" 1.0000000000000002;
	setAttr ".LeftShoulderRotateOrder" 2;
	setAttr ".LeftShoulderJointOrientx" -141.78190476868735;
	setAttr ".LeftShoulderJointOrienty" 70.961453837362484;
	setAttr ".LeftShoulderJointOrientz" 57.805251150569447;
	setAttr ".LeftShoulderMinRLimitx" -360;
	setAttr ".LeftShoulderMinRLimity" -360;
	setAttr ".LeftShoulderMinRLimitz" -360;
	setAttr ".LeftShoulderMaxRLimitx" 360;
	setAttr ".LeftShoulderMaxRLimity" 360;
	setAttr ".LeftShoulderMaxRLimitz" 360;
	setAttr ".RightShoulderTx" -2.0402578342214555;
	setAttr ".RightShoulderTy" 149.00130878533329;
	setAttr ".RightShoulderTz" 0.29430807644543133;
	setAttr ".RightShoulderRx" 77.609973431791914;
	setAttr ".RightShoulderRy" 14.932461274613752;
	setAttr ".RightShoulderRz" -168.05245973657884;
	setAttr ".RightShoulderSx" 0.99999999999999989;
	setAttr ".RightShoulderSy" 1.0000000000000002;
	setAttr ".RightShoulderRotateOrder" 2;
	setAttr ".RightShoulderJointOrientx" 38.218095231311679;
	setAttr ".RightShoulderJointOrienty" 109.0385461626377;
	setAttr ".RightShoulderJointOrientz" 57.805251150568466;
	setAttr ".RightShoulderMinRLimitx" -360;
	setAttr ".RightShoulderMinRLimity" -360;
	setAttr ".RightShoulderMinRLimitz" -360;
	setAttr ".RightShoulderMaxRLimitx" 360;
	setAttr ".RightShoulderMaxRLimity" 360;
	setAttr ".RightShoulderMaxRLimitz" 360;
	setAttr ".NeckTx" 1.1889447181243076e-14;
	setAttr ".NeckTy" 150.23778008621613;
	setAttr ".NeckTz" -3.4025893495656678;
	setAttr ".NeckRx" 90;
	setAttr ".NeckRy" -11.564199156249238;
	setAttr ".NeckRz" 90;
	setAttr ".NeckSz" 1.0000000000000002;
	setAttr ".NeckRotateOrder" 5;
	setAttr ".NeckJointOrientz" 17.189968364922624;
	setAttr ".NeckMinRLimitx" -360;
	setAttr ".NeckMinRLimity" -360;
	setAttr ".NeckMinRLimitz" -360;
	setAttr ".NeckMaxRLimitx" 360;
	setAttr ".NeckMaxRLimity" 360;
	setAttr ".NeckMaxRLimitz" 360;
	setAttr ".Spine1Tx" -2.0844370312523149e-14;
	setAttr ".Spine1Ty" 115.25029993664626;
	setAttr ".Spine1Tz" -0.72150309937945323;
	setAttr ".Spine1Rx" 90;
	setAttr ".Spine1Ry" 2.280669284640696;
	setAttr ".Spine1Rz" 90;
	setAttr ".Spine1Sx" 1.0000000000000002;
	setAttr ".Spine1Sy" 1.0000000000000002;
	setAttr ".Spine1Sz" 1.0000000000000002;
	setAttr ".Spine1JointOrientz" -8.8936111828482804;
	setAttr ".Spine1MinRLimitx" -360;
	setAttr ".Spine1MinRLimity" -360;
	setAttr ".Spine1MinRLimitz" -360;
	setAttr ".Spine1MaxRLimitx" 360;
	setAttr ".Spine1MaxRLimity" 360;
	setAttr ".Spine1MaxRLimitz" 360;
	setAttr ".Spine2Tx" -2.2426250219524521e-14;
	setAttr ".Spine2Ty" 121.77186223871237;
	setAttr ".Spine2Tz" -0.9812323046821011;
	setAttr ".Spine2Rx" 90;
	setAttr ".Spine2Ry" 2.280669284640696;
	setAttr ".Spine2Rz" 90;
	setAttr ".Spine2Sx" 1.0000000000000002;
	setAttr ".Spine2Sy" 1.0000000000000002;
	setAttr ".Spine2Sz" 1.0000000000000002;
	setAttr ".Spine2MinRLimitx" -360;
	setAttr ".Spine2MinRLimity" -360;
	setAttr ".Spine2MinRLimitz" -360;
	setAttr ".Spine2MaxRLimitx" 360;
	setAttr ".Spine2MaxRLimity" 360;
	setAttr ".Spine2MaxRLimitz" 360;
	setAttr ".Spine3Tx" -3.072415123486315e-14;
	setAttr ".Spine3Ty" 128.29342454077872;
	setAttr ".Spine3Tz" -1.2409615099847611;
	setAttr ".Spine3Rx" 90;
	setAttr ".Spine3Ry" 5.6257692086733853;
	setAttr ".Spine3Rz" 90;
	setAttr ".Spine3Sz" 1.0000000000000002;
	setAttr ".Spine3JointOrientz" -3.3450999240326893;
	setAttr ".Spine3MinRLimitx" -360;
	setAttr ".Spine3MinRLimity" -360;
	setAttr ".Spine3MinRLimitz" -360;
	setAttr ".Spine3MaxRLimitx" 360;
	setAttr ".Spine3MaxRLimity" 360;
	setAttr ".Spine3MaxRLimitz" 360;
	setAttr ".Neck1Tx" 4.5678214868982532e-15;
	setAttr ".Neck1Ty" 154.97558792079295;
	setAttr ".Neck1Tz" -2.4331417979542067;
	setAttr ".Neck1Rx" 90;
	setAttr ".Neck1Ry" -11.564199156249238;
	setAttr ".Neck1Rz" 90;
	setAttr ".Neck1Sz" 1.0000000000000002;
	setAttr ".Neck1RotateOrder" 5;
	setAttr ".Neck1MinRLimitx" -360;
	setAttr ".Neck1MinRLimity" -360;
	setAttr ".Neck1MinRLimitz" -360;
	setAttr ".Neck1MaxRLimitx" 360;
	setAttr ".Neck1MaxRLimity" 360;
	setAttr ".Neck1MaxRLimitz" 360;
	setAttr ".Neck2Tx" -9.7335178532152401e-15;
	setAttr ".Neck2Ty" 159.71339575536976;
	setAttr ".Neck2Tz" -1.4636942463427594;
	setAttr ".Neck2Rx" 90;
	setAttr ".Neck2Ry" -11.564199156249238;
	setAttr ".Neck2Rz" 90;
	setAttr ".Neck2Sz" 1.0000000000000002;
	setAttr ".Neck2RotateOrder" 5;
	setAttr ".Neck2MinRLimitx" -360;
	setAttr ".Neck2MinRLimity" -360;
	setAttr ".Neck2MinRLimitz" -360;
	setAttr ".Neck2MaxRLimitx" 360;
	setAttr ".Neck2MaxRLimity" 360;
	setAttr ".Neck2MaxRLimitz" 360;
createNode HIKProperty2State -n "HIKproperties1";
	rename -uid "83ADBDA0-41FD-BF5E-5D6A-DA83F5932A80";
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "DF3A0681-4987-70DF-F98A-E98DA835AF53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "CD1B9E39-48DC-EEA2-4C5D-9987030C93F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "CEE925ED-4B83-DF82-D406-EF85C02E2BBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "7AC471EE-47CB-3219-03D3-25BE9CC17524";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "74A7B732-435E-2093-797A-76A6D9C11292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 25 -28.322996577555429;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "A14C9F61-4245-CDC9-12C4-34952271DBF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "RootX_M_legLock";
	rename -uid "17D5A299-47FE-475C-F561-788930ECE6B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "RootX_M_CenterBtwFeet";
	rename -uid "2965F015-4AFC-243E-87EF-C5B3CF825DA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode reference -n "sharedReferenceNode";
	rename -uid "B7244B8C-42DD-7130-845B-8F8AD5593E95";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 15 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 18 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :defaultTextureList1;
	setAttr -s 8 ".tx";
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
connectAttr "RootX_M_translateX.o" "louRN.phl[1]";
connectAttr "RootX_M_translateY.o" "louRN.phl[2]";
connectAttr "RootX_M_translateZ.o" "louRN.phl[3]";
connectAttr "RootX_M_rotateX.o" "louRN.phl[4]";
connectAttr "RootX_M_rotateY.o" "louRN.phl[5]";
connectAttr "RootX_M_rotateZ.o" "louRN.phl[6]";
connectAttr "RootX_M_legLock.o" "louRN.phl[7]";
connectAttr "RootX_M_CenterBtwFeet.o" "louRN.phl[8]";
connectAttr "louRN.phl[9]" "lou1.Reference";
connectAttr "louRN.phl[10]" "lou1.Hips";
connectAttr "louRN.phl[11]" "lou1.RightUpLeg";
connectAttr "louRN.phl[12]" "lou1.RightLeg";
connectAttr "louRN.phl[13]" "lou1.RightFoot";
connectAttr "louRN.phl[14]" "lou1.Spine";
connectAttr "louRN.phl[15]" "lou1.Spine1";
connectAttr "louRN.phl[16]" "lou1.Spine2";
connectAttr "louRN.phl[17]" "lou1.Spine3";
connectAttr "louRN.phl[18]" "lou1.RightShoulder";
connectAttr "louRN.phl[19]" "lou1.RightArm";
connectAttr "louRN.phl[20]" "lou1.RightForeArm";
connectAttr "louRN.phl[21]" "lou1.RightHand";
connectAttr "louRN.phl[22]" "lou1.Neck";
connectAttr "louRN.phl[23]" "lou1.Neck1";
connectAttr "louRN.phl[24]" "lou1.Neck2";
connectAttr "louRN.phl[25]" "lou1.Head";
connectAttr "louRN.phl[26]" "lou1.LeftShoulder";
connectAttr "louRN.phl[27]" "lou1.LeftArm";
connectAttr "louRN.phl[28]" "lou1.LeftForeArm";
connectAttr "louRN.phl[29]" "lou1.LeftHand";
connectAttr "louRN.phl[30]" "lou1.LeftUpLeg";
connectAttr "louRN.phl[31]" "lou1.LeftLeg";
connectAttr "louRN.phl[32]" "lou1.LeftFoot";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "louRN.sr";
connectAttr "HIKproperties1.msg" "lou1.propertyState";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of lou_HIK.ma
