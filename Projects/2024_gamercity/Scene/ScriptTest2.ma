//Maya ASCII 2022 scene
//Name: ScriptTest2.ma
//Last modified: Sat, Apr 20, 2024 12:04:34 PM
//Codeset: 1252
requires "fbxmaya" "2020.1";
file -rdi 1 -ns "lou" -rfn "louRN" -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/pythonlearning/Projects/2024_gamercity/OnlineMaterials/Lou_rig/lou_edit.ma";
file -rdi 1 -ns "Ty" -rfn "TyRN" -typ "FBX export" "D:/Admin/Python/pythonlearning/Projects/2024_gamercity/OnlineMaterials/Ty.fbx";
file -r -ns "lou" -dr 1 -rfn "louRN" -op "v=0;" -typ "mayaAscii" "D:/Admin/Python/pythonlearning/Projects/2024_gamercity/OnlineMaterials/Lou_rig/lou_edit.ma";
file -r -ns "Ty" -dr 1 -rfn "TyRN" -typ "FBX export" "D:/Admin/Python/pythonlearning/Projects/2024_gamercity/OnlineMaterials/Ty.fbx";
requires maya "2022";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "312C634F-440B-CF3B-AFE8-45A37D9165E6";
createNode transform -s -n "persp";
	rename -uid "41872700-4F00-4D69-0899-D18574A37D4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 174.08820320988036 113.72019365056491 545.6904562734602 ;
	setAttr ".r" -type "double3" -10.538352729603552 17.40000000000142 -4.1663438790216802e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7340A307-40E2-B8D7-34DF-19A6576E9A0A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 603.8484568977193;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "50F6DBF0-4D69-1C77-F367-5DBBEADAF5F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3F10B459-43B0-8FD8-227F-FE9B781D565E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "5039F3D6-47D2-5EF8-0B47-CFBD133DA86D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "99C8BA86-4E61-84B0-7775-C0AB80AA3C7D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "5992773F-445B-D743-3429-67B02E2F56E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "00DD36EC-4E4D-6880-C6D9-A6A0CFD6C8DB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "TyMaya";
	rename -uid "C341A740-4A48-D279-F772-C8A984077449";
createNode transform -n "static_mesh";
	rename -uid "7A7AD544-4E1F-414A-1AD9-DF89147E9A13";
createNode mesh -n "static_meshShape" -p "static_mesh";
	rename -uid "74A3DBB0-4052-CBEF-0D6C-C0A22B0B6A1D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[52:59]" -type "float3"  -0.70495331 -0.50846255 0.70495331 
		0.70495331 -0.50846255 0.70495331 0.5700382 -0.28867191 0.5700382 -0.5700382 -0.28867191 
		0.5700382 0.70495331 -0.50846255 -0.70495331 0.5700382 -0.28867191 -0.5700382 -0.70495331 
		-0.50846255 -0.70495331 -0.5700382 -0.28867191 -0.5700382;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A052F028-4591-A0BC-CDB4-368DC46E74B6";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F2264506-4A15-89C9-0742-FEA948CDFD8A";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "96D73566-4F95-3C87-63BC-549DE61155E2";
	setAttr ".tpdt[0].tpcd" -type "Int32Array" 1 0 ;
createNode displayLayerManager -n "layerManager";
	rename -uid "77285324-4128-8DD8-657A-FABC421E4A3C";
createNode displayLayer -n "defaultLayer";
	rename -uid "C84C3967-45C2-CB02-5269-6E8F6F8C1565";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2066657E-4960-F78F-CD79-ADAD10E3F3B3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1C175365-4FFF-B036-AE00-9C97D1B27955";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7A305288-422B-E3E8-68DE-78B3142AEDF8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"DCF_updateViewportList;updateModelPanelBar\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"DCF_updateViewportList;updateModelPanelBar\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1213\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1213\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1213\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F5DBD226-4FD6-1AE9-D7F6-679474BBA6B2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 40 -ast 0 -aet 40 ";
	setAttr ".st" 6;
createNode reference -n "louRN";
	rename -uid "CB807EBD-46F4-D78E-C1C1-788E2AF83733";
	setAttr ".fn[0]" -type "string" "D:/Admin/Python/pythonlearning/Projects/2024_gamercity/Scene/Lou_rig/lou.ma";
	setAttr ".ed" -type "dataReferenceEdits" 
		"louRN"
		"louRN" 0
		"louRN" 99
		2 "|lou:Group" "visibility" " 1"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_R|lou:IKXOffsetHip_R|lou:IKXHip_R|lou:IKXKnee_R" 
		"rotate" " -type \"double3\" 0 0 4.3341976417980836e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_R|lou:IKXOffsetShoulder_R|lou:IKXShoulder_R" 
		"rotate" " -type \"double3\" 0 0 1.1326587362040651e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_R|lou:IKXOffsetShoulder_R|lou:IKXShoulder_R|lou:IKXElbow_R" 
		"rotate" " -type \"double3\" 0 0 -2.3753377050279719e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintRoot_M|lou:IKfake0Spine_M" 
		"rotate" " -type \"double3\" 0 0 -4.24382876916221452"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintRoot_M|lou:IKfake0Spine_M|lou:IKSpRootPart1_M|lou:IKSpSpine1_M" 
		"rotate" " -type \"double3\" 0 0 8.8936113623518942"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_L|lou:IKXOffsetHip_L|lou:IKXHip_L|lou:IKXKnee_L" 
		"rotate" " -type \"double3\" 0 0 4.3341978382028535e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintHip_L|lou:IKXOffsetHip_L|lou:IKXHip_L|lou:IKXKnee_L|lou:IKXAnkle_L|lou:IKXToes_L" 
		"rotate" " -type \"double3\" -9.6675819497853161e-07 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_L|lou:IKXOffsetShoulder_L|lou:IKXShoulder_L" 
		"rotate" " -type \"double3\" 0 0 1.1358719589327517e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:IKSystem|lou:IKJoints|lou:IKParentConstraintShoulder_L|lou:IKXOffsetShoulder_L|lou:IKXShoulder_L|lou:IKXElbow_L" 
		"rotate" " -type \"double3\" 0 0 -2.3753371875925203e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M" 
		"translate" " -type \"double3\" 0 101.04593480337562994 -2.36825572158344588"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M" 
		"translateX" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M" 
		"translateY" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:RootSystem|lou:RootCenterBtwLegsBlended_M" 
		"translateZ" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetChest_M|lou:TwistFollowChest_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetChest_M|lou:TwistFollowChest_M" 
		"translateX" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetChest_M|lou:TwistFollowChest_M" 
		"translateY" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetChest_M|lou:TwistFollowChest_M" 
		"translateZ" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetSpine2_M|lou:TwistFollowSpine2_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetSpine2_M|lou:TwistFollowSpine2_M" 
		"translateX" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetSpine2_M|lou:TwistFollowSpine2_M" 
		"translateY" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowOffsetSpine2_M|lou:TwistFollowSpine2_M" 
		"translateZ" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"translateX" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"translateY" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"translateZ" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"rotateX" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"rotateY" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetSpine2_M|lou:TwistFollowParentSpine2_M" 
		"rotateZ" " -av"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetAnkle_R|lou:TwistFollowParentAnkle_R|lou:UnTwistAnkle_R" 
		"rotate" " -type \"double3\" 0 -1.1184737014063903e-06 -1.9436880533583874e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetHip_R|lou:TwistFollowParentHip_R|lou:UnTwistHip_R" 
		"rotate" " -type \"double3\" 0 0 -1.9636793863786756e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetAnkle_L|lou:TwistFollowParentAnkle_L|lou:UnTwistAnkle_L" 
		"rotate" " -type \"double3\" 0 -1.1188944556737252e-06 -1.9361706168064762e-05"
		2 "|lou:Group|lou:Main|lou:MotionSystem|lou:TwistSystem|lou:TwistFollowParentOffsetKnee_L|lou:TwistFollowParentKnee_L|lou:UnTwistKnee_L" 
		"rotate" " -type \"double3\" 0 0 4.3349510883389183e-05"
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
		2 "lou:asFaceBS_lashes" "midLayerParent" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "549E148F-4060-A5B7-5457-04B44DAF3612";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode reference -n "TyRN";
	rename -uid "1C4D8B0C-4829-FAD9-F49F-79AEF3D892D0";
	setAttr ".ed" -type "dataReferenceEdits" 
		"TyRN"
		"TyRN" 0
		"TyRN" 233
		0 "|Ty:mixamorig:Hips" "|TyMaya" "-s -r "
		0 "|Ty:Boy_01_Meshes" "|TyMaya" "-s -r "
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_Head_Geo|Ty:Boy01_Head_GeoShape" "visibility" 
		" -k 0 1"
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_Hands_Geo|Ty:Boy01_Hands_GeoShape" "visibility" 
		" -k 0 1"
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_UpperBody_Geo|Ty:Boy01_UpperBody_GeoShape" 
		"visibility" " -k 0 1"
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_LowerBody_Geo|Ty:Boy01_LowerBody_GeoShape" 
		"visibility" " -k 0 1"
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_Shoes_Geo|Ty:Boy01_Shoes_GeoShape" "visibility" 
		" -k 0 1"
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_Scarf_Geo|Ty:Boy01_Scarf_GeoShape" "visibility" 
		" -k 0 1"
		2 "|TyMaya|Ty:Boy_01_Meshes|Ty:Boy01_Hair_Geo|Ty:Boy01_Hair_GeoShape" "visibility" 
		" -k 0 1"
		2 "|TyMaya|Ty:mixamorig:Hips" "translate" " -type \"double3\" -9.8068903753301129e-06 84.64971923828125 0.41792020201683044"
		
		2 "|TyMaya|Ty:mixamorig:Hips" "translateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips" "translateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips" "translateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips" "rotate" " -type \"double3\" 0 -8.1367693383072037e-07 2.462269549141638e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips" "rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips" "rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips" "rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine" "rotate" " -type \"double3\" -2.5138876935670856e-07 1.4276992033046556e-07 -2.4636312446091324e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine" "rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine" "rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine" "rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1" "rotate" 
		" -type \"double3\" 7.6540595728147309e-07 0 -2.7310978478745085e-10"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1" "rotateX" 
		" -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1" "rotateY" 
		" -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1" "rotateZ" 
		" -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2" 
		"rotate" " -type \"double3\" -5.1838998160746996e-07 0 9.1879209795919802e-10"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck|Ty:mixamorig:Head" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck|Ty:mixamorig:Head" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck|Ty:mixamorig:Head" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Neck|Ty:mixamorig:Head" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder" 
		"rotate" " -type \"double3\" -0.0019654072821140289 -0.00063046859577298164 -1.8907381900135076e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm" 
		"rotate" " -type \"double3\" 0.0019791573286056519 6.7682813096325845e-06 6.9192128648865028e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm" 
		"rotate" " -type \"double3\" -6.8301883402455132e-06 -6.8301883402455132e-06 6.8301883402455132e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand" 
		"rotate" " -type \"double3\" 0.051477435976266861 0.021211147308349613 0.032583419233560562"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1" 
		"rotate" " -type \"double3\" -0.071904562413692474 -7.4061063060071319e-05 -0.116619810461998"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2" 
		"rotate" " -type \"double3\" 1.593580782355275e-05 -2.6807945232576458e-06 -1.7753607608028688e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2|Ty:mixamorig:LeftHandThumb3" 
		"rotate" " -type \"double3\" 4.3146801544935443e-06 -1.2775178674928611e-06 -2.6453210466570454e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2|Ty:mixamorig:LeftHandThumb3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2|Ty:mixamorig:LeftHandThumb3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandThumb1|Ty:mixamorig:LeftHandThumb2|Ty:mixamorig:LeftHandThumb3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1" 
		"rotate" " -type \"double3\" -0.051465369760990143 -3.6470416944212043e-06 -0.032676592469215393"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2" 
		"rotate" " -type \"double3\" -6.8289214141259436e-06 -1.3665434380527586e-05 0"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2|Ty:mixamorig:LeftHandIndex3" 
		"rotate" " -type \"double3\" 0 3.421418796278886e-06 -6.830185157014057e-06"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2|Ty:mixamorig:LeftHandIndex3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2|Ty:mixamorig:LeftHandIndex3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandIndex1|Ty:mixamorig:LeftHandIndex2|Ty:mixamorig:LeftHandIndex3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1" 
		"rotate" " -type \"double3\" -0.051458537578582764 -1.7309941540588625e-05 -0.032676581293344505"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2" 
		"rotate" " -type \"double3\" 1.2645878788575262e-09 5.0583532917869434e-09 -1.3660374861501623e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2|Ty:mixamorig:LeftHandMiddle3" 
		"rotate" " -type \"double3\" -6.8301883402455132e-06 3.4100353332178202e-06 6.8301874307508115e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2|Ty:mixamorig:LeftHandMiddle3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2|Ty:mixamorig:LeftHandMiddle3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandMiddle1|Ty:mixamorig:LeftHandMiddle2|Ty:mixamorig:LeftHandMiddle3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1" 
		"rotate" " -type \"double3\" -0.051472194492816925 -1.5602396160829812e-05 -0.032676585018634796"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2" 
		"rotate" " -type \"double3\" 6.8251288212195504e-06 0 6.8301874307508115e-06"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2|Ty:mixamorig:LeftHandRing3" 
		"rotate" " -type \"double3\" 6.8352460402820717e-06 1.1957891729252879e-05 -2.0490562746999785e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2|Ty:mixamorig:LeftHandRing3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2|Ty:mixamorig:LeftHandRing3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandRing1|Ty:mixamorig:LeftHandRing2|Ty:mixamorig:LeftHandRing3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1" 
		"rotate" " -type \"double3\" -0.051472194492816925 -5.3643261708202772e-06 -0.032690253108739853"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2" 
		"rotate" " -type \"double3\" 2.0486138964770362e-05 0 6.830189249740215e-06"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2|Ty:mixamorig:LeftHandPinky3" 
		"rotate" " -type \"double3\" -6.8263925641076639e-06 1.7075462892535143e-06 -6.830189249740215e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2|Ty:mixamorig:LeftHandPinky3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2|Ty:mixamorig:LeftHandPinky3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:LeftShoulder|Ty:mixamorig:LeftArm|Ty:mixamorig:LeftForeArm|Ty:mixamorig:LeftHand|Ty:mixamorig:LeftHandPinky1|Ty:mixamorig:LeftHandPinky2|Ty:mixamorig:LeftHandPinky3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder" 
		"rotate" " -type \"double3\" 0.0019819627050310373 -0.00062507030088454485 -1.2194596820336303e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm" 
		"rotate" " -type \"double3\" -0.0019645944703370333 7.1498611760034692e-06 1.7696962459012866e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm" 
		"rotate" " -type \"double3\" -6.8301883402455132e-06 6.8301883402455132e-06 -6.8301883402455132e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand" 
		"rotate" " -type \"double3\" 0.051948715001344681 -0.021933438256382942 -0.032586831599473953"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1" 
		"rotate" " -type \"double3\" -0.077963083982467651 8.2399303209967911e-05 0.1159907802939415"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2" 
		"rotate" " -type \"double3\" 0.0036041815765202041 -4.9216569095733576e-06 -0.00028707328601740301"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2|Ty:mixamorig:RightHandThumb3" 
		"rotate" " -type \"double3\" 0.010601765476167202 -4.7478288252023049e-06 0.00090229004854336381"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2|Ty:mixamorig:RightHandThumb3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2|Ty:mixamorig:RightHandThumb3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandThumb1|Ty:mixamorig:RightHandThumb2|Ty:mixamorig:RightHandThumb3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1" 
		"rotate" " -type \"double3\" -0.051929406821727753 1.2459250683605205e-05 0.032686829566955566"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2" 
		"rotate" " -type \"double3\" -1.3658411262440495e-05 3.4216327549074772e-06 -6.830185157014057e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2|Ty:mixamorig:RightHandIndex3" 
		"rotate" " -type \"double3\" 0 -3.4216345738968812e-06 6.830185157014057e-06"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2|Ty:mixamorig:RightHandIndex3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2|Ty:mixamorig:RightHandIndex3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandIndex1|Ty:mixamorig:RightHandIndex2|Ty:mixamorig:RightHandIndex3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1" 
		"rotate" " -type \"double3\" -0.051929406821727753 1.5872075891820714e-05 0.0327799953520298"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2" 
		"rotate" " -type \"double3\" 1.3077416927131935e-09 -5.2309681031204036e-09 0.00021366037253756076"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2|Ty:mixamorig:RightHandMiddle3" 
		"rotate" " -type \"double3\" -6.8301883402455132e-06 -3.4098627565981592e-06 -6.8301874307508115e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2|Ty:mixamorig:RightHandMiddle3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2|Ty:mixamorig:RightHandMiddle3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandMiddle1|Ty:mixamorig:RightHandMiddle2|Ty:mixamorig:RightHandMiddle3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1" 
		"rotate" " -type \"double3\" -0.051943063735961914 1.41645296025672e-05 0.032579999417066574"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2" 
		"rotate" " -type \"double3\" 6.8249560172262136e-06 0 -6.8301874307508115e-06"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2|Ty:mixamorig:RightHandRing3" 
		"rotate" " -type \"double3\" -6.8262652348494157e-06 -1.7101635876315411e-06 -9.3169815954752266e-05"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2|Ty:mixamorig:RightHandRing3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2|Ty:mixamorig:RightHandRing3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandRing1|Ty:mixamorig:RightHandRing2|Ty:mixamorig:RightHandRing3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1" 
		"rotate" " -type \"double3\" -0.051943063735961914 3.9264000406546984e-06 0.032593667507171631"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2" 
		"rotate" " -type \"double3\" 2.0485987988649867e-05 0 -6.830189249740215e-06"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2|Ty:mixamorig:RightHandPinky3" 
		"rotate" " -type \"double3\" -2.0486637367866933e-05 1.0250513696519192e-05 -6.8301869760034606e-06"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2|Ty:mixamorig:RightHandPinky3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2|Ty:mixamorig:RightHandPinky3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:RightShoulder|Ty:mixamorig:RightArm|Ty:mixamorig:RightForeArm|Ty:mixamorig:RightHand|Ty:mixamorig:RightHandPinky1|Ty:mixamorig:RightHandPinky2|Ty:mixamorig:RightHandPinky3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2|Ty:mixamorig:Scart3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2|Ty:mixamorig:Scart3" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2|Ty:mixamorig:Scart3" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:Spine|Ty:mixamorig:Spine1|Ty:mixamorig:Spine2|Ty:mixamorig:Scart1|Ty:mixamorig:Scart2|Ty:mixamorig:Scart3" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg" "rotate" " -type \"double3\" -0.0074548167176544666 -1.490687282057479e-05 -0.0042261937633156776"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg" "rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg" "rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg" "rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg" 
		"rotate" " -type \"double3\" -0.071486517786979675 -2.2538490185297633e-08 1.2797077175719098e-08"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot" 
		"rotate" " -type \"double3\" 0.07902807742357254 -0.00084304466145113111 0.001961088739335537"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot|Ty:mixamorig:LeftToeBase" 
		"rotate" " -type \"double3\" -4.6481591198244132e-06 2.6280463316652458e-07 1.1488337037235397e-07"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot|Ty:mixamorig:LeftToeBase" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot|Ty:mixamorig:LeftToeBase" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:LeftUpLeg|Ty:mixamorig:LeftLeg|Ty:mixamorig:LeftFoot|Ty:mixamorig:LeftToeBase" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg" "rotate" " -type \"double3\" -0.0083439880982041359 1.3087407751299907e-05 0.004175734706223011"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg" "rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg" "rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg" "rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg" 
		"rotate" " -type \"double3\" -0.069804690778255463 -3.9927765982383789e-08 -4.3610086208900618e-08"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot" 
		"rotate" " -type \"double3\" 0.078234098851680756 0.00080434017581865191 -0.0019692250061780214"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot" 
		"rotateZ" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot|Ty:mixamorig:RightToeBase" 
		"rotate" " -type \"double3\" -1.1498990488689742e-06 1.6547521397569653e-07 -1.1233892394102439e-07"
		
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot|Ty:mixamorig:RightToeBase" 
		"rotateX" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot|Ty:mixamorig:RightToeBase" 
		"rotateY" " -av"
		2 "|TyMaya|Ty:mixamorig:Hips|Ty:mixamorig:RightUpLeg|Ty:mixamorig:RightLeg|Ty:mixamorig:RightFoot|Ty:mixamorig:RightToeBase" 
		"rotateZ" " -av";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode polyCube -n "polyCube1";
	rename -uid "C9D7E466-49EC-4D58-6E1C-FBA4CFACA6B4";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "6929B09E-4655-F91D-1C1B-69B462122C6D";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 63622;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 0.5 -0.5 ;
	setAttr ".cbx" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "E5151999-4736-D424-51AA-9FAEDF21933D";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.5583856 0 ;
	setAttr ".rs" 38029;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6266560554504395 2.5583856105804443 -1.6266560554504395 ;
	setAttr ".cbx" -type "double3" 1.6266560554504395 2.5583856105804443 1.6266560554504395 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "F48FB85E-4343-FFA2-4CCB-8C9B676C50EE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -1.12665606 2.058385611 1.12665606
		 1.12665606 2.058385611 1.12665606 1.12665606 2.058385611 -1.12665606 -1.12665606
		 2.058385611 -1.12665606;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "233FD3F3-4BC2-F9A8-8F37-FDA29D08B915";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.0655446 0 ;
	setAttr ".rs" 41245;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3153433799743652 3.065544605255127 -1.3153433799743652 ;
	setAttr ".cbx" -type "double3" 1.3153433799743652 3.065544605255127 1.3153433799743652 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "3CA30B22-4278-ED55-0048-49B745089E16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.31131268 0.50715911 -0.31131268
		 -0.31131268 0.50715911 -0.31131268 -0.31131268 0.50715911 0.31131268 0.31131268 0.50715911
		 0.31131268;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "6B7A567D-4E62-8847-8BA8-43BBA9EDC47D";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.007853 0 ;
	setAttr ".rs" 65292;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7350655794143677 4.0078530311584473 -1.7350655794143677 ;
	setAttr ".cbx" -type "double3" 1.7350655794143677 4.0078530311584473 1.7350655794143677 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "01A0F352-4AE3-38B2-60FE-6CB009562B93";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  -0.41972223 0.94230849 0.41972223
		 0.41972223 0.94230849 0.41972223 0.41972223 0.94230849 -0.41972223 -0.41972223 0.94230849
		 -0.41972223;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "0926ABFD-45DD-76BD-ACA4-7197779B3CEF";
	setAttr ".ics" -type "componentList" 2 "f[19]" "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.0808039 0 ;
	setAttr ".rs" 62223;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7350655794143677 4.0078530311584473 -1.7350655794143677 ;
	setAttr ".cbx" -type "double3" 1.7350655794143677 6.1537542343139648 1.7350655794143677 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "F5BE04A0-4FF3-A1C7-53E3-7D9F3CB982DF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 2.1459012 0 0 2.1459012
		 0 0 2.1459012 0 0 2.1459012 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "43C1A48B-4E5E-2710-2924-37A80CA5CB0F";
	setAttr ".ics" -type "componentList" 2 "f[24]" "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.998621 0 ;
	setAttr ".rs" 59826;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.9383964538574219 6.1537542343139648 -1.7350655794143677 ;
	setAttr ".cbx" -type "double3" 3.9383964538574219 7.8434872627258301 1.7350655794143677 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak5";
	rename -uid "2426E90D-49F5-0FC8-5F17-F5A92CD1AA4B";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[24:31]" -type "float3"  2.20333099 1.68973315 0 2.20333099
		 1.68973315 0 2.20333076 1.68973291 0 2.20333076 1.68973291 0 -2.20333076 1.68973315
		 0 -2.20333076 1.68973315 0 -2.20333099 1.68973267 0 -2.20333099 1.68973267 0;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "1B846DF7-42AD-E74E-D754-E0A7A8256DF1";
	setAttr ".ics" -type "componentList" 2 "f[24]" "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 8.3420448 0 ;
	setAttr ".rs" 46895;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2947771549224854 7.8497676849365234 -1.0109668970108032 ;
	setAttr ".cbx" -type "double3" 2.2947771549224854 8.8343210220336914 1.0109668970108032 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "9C0C41A8-4545-0FE8-1CF3-8A924C3DD20C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[32:39]" -type "float3"  -0.72409868 1.69601369 -0.72409868
		 -0.72409868 1.69601369 0.72409868 -1.6436193 0.99083388 -0.72409868 -1.6436193 0.99083388
		 0.72409868 0.72409868 1.69601369 -0.72409868 0.72409868 1.69601369 0.72409868 1.6436193
		 0.990834 0.72409868 1.6436193 0.990834 -0.72409868;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "BC1060DD-4602-8A99-C776-0995D780CCCA";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.1537542 0 ;
	setAttr ".rs" 48740;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7350655794143677 6.1537542343139648 -1.7350655794143677 ;
	setAttr ".cbx" -type "double3" 1.7350655794143677 6.1537542343139648 1.7350655794143677 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "1A14B8C9-4A37-1E69-C02B-06B844FA7805";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[40:47]" -type "float3"  -0.59599125 5.50371504 -0.59599125
		 -0.59599125 5.50371504 0.59599125 -1.35283113 4.9232955 -0.59599125 -1.35283113 4.9232955
		 0.59599125 0.59599125 5.50371504 -0.59599125 0.59599125 5.50371504 0.59599125 1.35283113
		 4.9232955 0.59599125 1.35283113 4.9232955 -0.59599125;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "A487AFC4-4BCC-FCE4-9C83-32B051DE722E";
	setAttr ".ics" -type "componentList" 1 "f[10:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.811965 0 ;
	setAttr ".rs" 60905;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6266560554504395 2.5583856105804443 -1.6266560554504395 ;
	setAttr ".cbx" -type "double3" 1.6266560554504395 3.065544605255127 1.6266560554504395 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "74873229-4005-A626-21BD-CA9C22254606";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0.2385788 0 -0.2385788 ;
	setAttr ".tk[1]" -type "float3" -0.2385788 0 -0.2385788 ;
	setAttr ".tk[6]" -type "float3" 0.2385788 0 0.2385788 ;
	setAttr ".tk[7]" -type "float3" -0.2385788 0 0.2385788 ;
	setAttr ".tk[48]" -type "float3" 1.1264236 0.51605088 -1.1264236 ;
	setAttr ".tk[49]" -type "float3" -1.1264236 0.51605088 -1.1264236 ;
	setAttr ".tk[50]" -type "float3" -1.1264236 0.51605088 1.1264236 ;
	setAttr ".tk[51]" -type "float3" 1.1264236 0.51605088 1.1264236 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "E554F370-45DD-30D2-4750-ACBF747FDA62";
	setAttr ".version" -type "string" "4.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B578F707-4245-4FDB-D8F1-4FBFB5719E0D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "22411D22-4B30-F2E1-275F-B5A733B24487";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "441A998B-419B-0EE5-AC21-C68247968EE8";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 22 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 25 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 15 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 4 ".r";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 15 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 32 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 3 ".sol";
connectAttr "polyExtrudeFace9.out" "static_meshShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "louRN.sr";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "static_meshShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "static_meshShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_tunnelParkEntrance_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_testMode_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_vegetation_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayMain_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainsRight:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_ground:string=value";
dataStructure -fmt "raw" -as "name=notes_grassBase:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_chocolateFountain_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_Combined1:string=value";
dataStructure -fmt "raw" -as "name=notes_ground03_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksCurbsGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_path:string=value";
dataStructure -fmt "raw" -as "name=notes_floorScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_suelo:string=value";
dataStructure -fmt "raw" -as "name=notes_sand_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_railes:string=value";
dataStructure -fmt "raw" -as "name=notes_bridge_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane3:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_big_back:string=value";
dataStructure -fmt "raw" -as "name=notes_baseScatter:string=value";
dataStructure -fmt "raw" -as "name=notes_geos:string=value";
dataStructure -fmt "raw" -as "name=notes_floor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_level1B_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_grassScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_concretePath_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_grassCampfire_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_floor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_strap_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane1:string=value";
dataStructure -fmt "raw" -as "name=mapManager_throwbotLeft_scatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_ground03_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchG_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTielMainStreet_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloB:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassC_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_backWall_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_det:string=value";
dataStructure -fmt "raw" -as "name=notes_fountainHA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_original:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor_flowers:string=value";
dataStructure -fmt "raw" -as "name=mapManager_square_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_groundWoods_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane5:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base:string=value";
dataStructure -fmt "raw" -as "name=notes_cheat_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTopiary:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayCircular_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchD_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_rocskLeftPLA:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksTopiary:string=value";
dataStructure -fmt "raw" -as "name=notes_groundC_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_rockSignRollo:string=value";
dataStructure -fmt "raw" -as "name=notes_square_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_level1A:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchDegraded_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassD_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane4:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesTrees_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_trees_left:string=value";
dataStructure -fmt "raw" -as "name=mapManager_road_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=notes_squareRocks_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slideSundaeRightScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_floorConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloA:string=value";
dataStructure -fmt "raw" -as "name=notes_stairs_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTopiaryGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsRight:string=value";
dataStructure -fmt "raw" -as "name=notes_slopes_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_circular:string=value";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=notes_scatterGround:string=value";
dataStructure -fmt "raw" -as "name=notes_stoneFloor:string=value";
dataStructure -fmt "raw" -as "name=notes_level1A:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesCDetail_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_suelo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_backgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_terraceGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantFront:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersMain_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_floor_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_left_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_groundPlane_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane6:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwayMain_Flowers:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseLeaves:string=value";
dataStructure -fmt "raw" -as "name=notes_decayLeavesFlowerBed_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorOrangeConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_tilesFloorDet:string=value";
dataStructure -fmt "raw" -as "name=mapManager_arbustosScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_grassBDecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesGrassDetail_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_polySurface56:string=value";
dataStructure -fmt "raw" -as "name=notes_suelofuente:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersSquare:string=value";
dataStructure -fmt "raw" -as "name=notes_terraces_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_throwbotLeft_scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsCSC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayRocket:string=value";
dataStructure -fmt "raw" -as "name=notes_grassRightMountains:string=value";
dataStructure -fmt "raw" -as "name=notes_decayFlowerBeds_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_baseLeaves:string=value";
dataStructure -fmt "raw" -as "name=notes_mainStreetMainstreetTrees04:string=value";
dataStructure -fmt "raw" -as "name=notes_leftSpecific_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_circular:string=value";
dataStructure -fmt "raw" -as "name=notes_railwayGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bushes_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass:string=value";
dataStructure -fmt "raw" -as "name=notes_grassD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane2:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchF_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_path:string=value";
dataStructure -fmt "raw" -as "name=notes_trees:string=value";
dataStructure -fmt "raw" -as "name=mapManager_leaves:string=value";
dataStructure -fmt "raw" -as "name=notes_grassADecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundWoods_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_CombinedGrass:string=value";
dataStructure -fmt "raw" -as "name=notes_rockSignRollo_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_Combined1:string=value";
dataStructure -fmt "raw" -as "name=mapManager_concretePath_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloProvi3:string=value";
dataStructure -fmt "raw" -as "name=notes_drawBridge_physPivot:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_Scatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base_right:string=value";
dataStructure -fmt "raw" -as "name=notes_slopes:string=value";
dataStructure -fmt "raw" -as "name=notes_square_ground:string=value";
dataStructure -fmt "raw" -as "name=notes_juneNbhHouseE_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_frogEntrance_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_vgFCarouselBed_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_trees_left1:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloP2:string=value";
dataStructure -fmt "raw" -as "name=mapManager_drawBridge_physPivot:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassesCenter_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_small:string=value";
dataStructure -fmt "raw" -as "name=notes_leavesDecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_det:string=value";
dataStructure -fmt "raw" -as "name=notes_backgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_floorFlower:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloA8:string=value";
dataStructure -fmt "raw" -as "name=notes_sidewalkGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwayRocket_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_groundWoods_c_Geo:string=value";
dataStructure -fmt "raw" -as "name=notes_groundA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_midgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=mapManager_stoneFloor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorA:string=value";
dataStructure -fmt "raw" -as "name=notes_grassCDecay_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayRocket_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_terracesSuelo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundPlane_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloP2:string=value";
dataStructure -fmt "raw" -as "name=notes_midground_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantFront_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwaySpaceland_Main_Leaves:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_widlPatchB_parShape:string=value";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=notes_walkwaySquare_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_small:string=value";
dataStructure -fmt "raw" -as "name=notes_grass:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksTopiary_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainCSB:string=value";
dataStructure -fmt "raw" -as "name=notes_amp_lyref_cmp0010_layGround:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_Scatt:string=value";
dataStructure -fmt "raw" -as "name=notes_grassB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane:string=value";
dataStructure -fmt "raw" -as "name=mapManager_ground:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseForest:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantBack:string=value";
dataStructure -fmt "raw" -as "name=notes_treesRocksAnimalHome_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_ferns_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_stoneFloor_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_center_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksGround:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwaySpaceland_Main_Leaves:string=value";
dataStructure -fmt "raw" -as "name=notes_treesA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassCenter_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grasses:string=value";
dataStructure -fmt "raw" -as "name=mapManager_curbsGarden_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_treesB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_trees_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_Suelo:string=value";
dataStructure -fmt "raw" -as "name=notes_ground_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseScatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_grassDetail_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloP1:string=value";
dataStructure -fmt "raw" -as "name=mapManager_ground_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_riverSideground:string=value";
dataStructure -fmt "raw" -as "name=notes_vgtCampfire_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_baseForest:string=value";
dataStructure -fmt "raw" -as "name=mapManager_scatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_trees_left:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloC:string=value";
dataStructure -fmt "raw" -as "name=mapManager_throwbotLeftScatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloB:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassRightMountains:string=value";
dataStructure -fmt "raw" -as "name=notes_rightExterior_parShape:string=value";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=notes_walkwayMain_Flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_tilesFloorDet:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksGrounds:string=value";
dataStructure -fmt "raw" -as "name=notes_leaves:string=value";
dataStructure -fmt "raw" -as "name=notes_leaves_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floor1:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsCSB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_degraded:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sand_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_terraceBush_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_floor:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane6:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_CombinedGrass:string=value";
dataStructure -fmt "raw" -as "name=notes_floorCampfire:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloA:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksTopiary_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloA9:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainCSB:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainCSA:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base_hojas:string=value";
dataStructure -fmt "raw" -as "name=notes_levelC:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloP1:string=value";
dataStructure -fmt "raw" -as "name=notes_carouselStairs_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_base:string=value";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=notes_rockSignRollo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassA_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_Suelo:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassB_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floor1:string=value";
dataStructure -fmt "raw" -as "name=notes_pPlane1:string=value";
dataStructure -fmt "raw" -as "name=mapManager_restaurantFront:string=value";
dataStructure -fmt "raw" -as "name=notes_grass_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainsCSA_parShape:string=value";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=notes_concretesGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_rocskLeftPLA:string=value";
dataStructure -fmt "raw" -as "name=notes_vgTFicus39:string=value";
dataStructure -fmt "raw" -as "name=notes_slabsAndStairsGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesGrasStairs_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassGround_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_scatterGround:string=value";
dataStructure -fmt "raw" -as "name=notes_grassBeauty_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_base_right:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane4:string=value";
dataStructure -fmt "raw" -as "name=mapManager_juneBackYard:string=value";
dataStructure -fmt "raw" -as "name=mapManager_new_sand:string=value";
dataStructure -fmt "raw" -as "name=notes_new_sand:string=value";
dataStructure -fmt "raw" -as "name=notes_floorOrangeConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayRocket_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_rockTerraces_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slideSundaeLeft_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floorOrangeGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_arbustosScatt:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slideSundaeRightScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_barbacueHouseFront_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchH_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassJuneBackYard_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassD_Combined1:string=value";
dataStructure -fmt "raw" -as "name=notes_levelUnoA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_level1A_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassGround_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassD_Combined1:string=value";
dataStructure -fmt "raw" -as "name=notes_frogLeft_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassA_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_walkwayRocket:string=value";
dataStructure -fmt "raw" -as "name=notes_decayLeavesCarousel_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_throwbotLeftScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_vgGroundB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grass_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassC_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_level1B_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_small_grass:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesRight_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_square_floor:string=value";
dataStructure -fmt "raw" -as "name=notes_curbsGarden_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesMountainsGrass_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyGrassPatchA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_original:string=value";
dataStructure -fmt "raw" -as "name=mapManager_square_ground:string=value";
dataStructure -fmt "raw" -as "name=notes_slopesGroundGrassD_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainCSA:string=value";
dataStructure -fmt "raw" -as "name=notes_road_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_rockCheated_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_rocks:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesFlowers_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_fountainRight_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_levelC:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloA8:string=value";
dataStructure -fmt "raw" -as "name=notes_holeRock_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_polySurface56:string=value";
dataStructure -fmt "raw" -as "name=mapManager_mountainCSC:string=value";
dataStructure -fmt "raw" -as "name=notes_backWall_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantBack_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksGrounds:string=value";
dataStructure -fmt "raw" -as "name=notes_levelUnoC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_grassRightMountains_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_background_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane5:string=value";
dataStructure -fmt "raw" -as "name=notes_grassLeftMountains_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_decayLeaves_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_restaurantNextHouse_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_level1A_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_floorSquare:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesFront_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane2:string=value";
dataStructure -fmt "raw" -as "name=notes_groundD_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_tunnel:string=value";
dataStructure -fmt "raw" -as "name=notes_levelUnoB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_grassBase:string=value";
dataStructure -fmt "raw" -as "name=mapManager_amp_lyref_cmp0010_layGround:string=value";
dataStructure -fmt "raw" -as "name=notes_floorA:string=value";
dataStructure -fmt "raw" -as "name=notes_hotelBack_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_floorGrassA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_treesRocksHA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorConcrete_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorFlower:string=value";
dataStructure -fmt "raw" -as "name=mapManager_suelofuente:string=value";
dataStructure -fmt "raw" -as "name=notes_groundRocks:string=value";
dataStructure -fmt "raw" -as "name=RenderSettings:string=preset";
dataStructure -fmt "raw" -as "name=notes_groundB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorSquare:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopes:string=value";
dataStructure -fmt "raw" -as "name=mapManager_tunnel:string=value";
dataStructure -fmt "raw" -as "name=notes_road_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_bushesA_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_Combined:string=value";
dataStructure -fmt "raw" -as "name=mapManager_sueloC:string=value";
dataStructure -fmt "raw" -as "name=mapManager_stairs_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_base_left:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesGroundGrassB_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_grasses:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksTielMainStreet_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersRightLeft_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorCampfire:string=value";
dataStructure -fmt "raw" -as "name=notes_trees_left1:string=value";
dataStructure -fmt "raw" -as "name=notes_floor_flowers:string=value";
dataStructure -fmt "raw" -as "name=notes_curbsGardenGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_strap_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainTrail_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_riverSide:string=value";
dataStructure -fmt "raw" -as "name=mapManager_geos:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwaySquareFlowers_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_floorScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_ridePiggy_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksFence_c_geo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_restaurantBack:string=value";
dataStructure -fmt "raw" -as "name=notes_midgroundPlane:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_sidewalkGrassB_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundWoods_c_geo1:string=value";
dataStructure -fmt "raw" -as "name=notes_right_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_base_left:string=value";
dataStructure -fmt "raw" -as "name=mapManager_snapshot_Combined2:string=value";
dataStructure -fmt "raw" -as "name=notes_base_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_rocks:string=value";
dataStructure -fmt "raw" -as "name=notes_grassC_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_small_grass:string=value";
dataStructure -fmt "raw" -as "name=mapManager_degraded:string=value";
dataStructure -fmt "raw" -as "name=notes_juneBackYard:string=value";
dataStructure -fmt "raw" -as "name=mapManager_big_back:string=value";
dataStructure -fmt "raw" -as "name=notes_wasteLand_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_baseScatt:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayAreaCorner_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_heroesChoice_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_bricksFence_c_geo:string=value";
dataStructure -fmt "raw" -as "name=notes_mountains_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_snapshot_Combined2:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchE_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_flowersHA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_mountainCSC:string=value";
dataStructure -fmt "raw" -as "name=notes_sueloA9:string=value";
dataStructure -fmt "raw" -as "name=notes_centerStreetGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_trees:string=value";
dataStructure -fmt "raw" -as "name=mapManager_groundRocks:string=value";
dataStructure -fmt "raw" -as "name=mapManager_railes:string=value";
dataStructure -fmt "raw" -as "name=notes_slideSundaeRight_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_terracesSuelo:string=value";
dataStructure -fmt "raw" -as "name=mapManager_baseScatter:string=value";
dataStructure -fmt "raw" -as "name=mapManager_pPlane3:string=value";
dataStructure -fmt "raw" -as "name=mapManager_riverSideground:string=value";
dataStructure -fmt "raw" -as "name=notes_beautyFlowersBedA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_riverSide:string=value";
dataStructure -fmt "raw" -as "name=notes_walkwayArea_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_stoneFloorGrass_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_flowersSquare:string=value";
dataStructure -fmt "raw" -as "name=notes_wildPatchA_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_decayGrassPatchB_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_entrance_parShape:string=value";
dataStructure -fmt "raw" -as "name=notes_frogL_parShape:string=value";
dataStructure -fmt "raw" -as "name=mapManager_slopesMountainsGrass_Combined:string=value";
dataStructure -fmt "raw" -as "name=notes_bricksGround:string=value";
dataStructure -fmt "raw" -as "name=notes_base_hojas:string=value";
dataStructure -fmt "raw" -as "name=notes_riverside_parShape:string=value";
// End of ScriptTest2.ma
