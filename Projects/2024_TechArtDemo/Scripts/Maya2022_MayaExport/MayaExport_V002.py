# Copyright 2024 by Evan Koh Wen Hong

import maya.cmds as cmds
import os
import maya.mel as mel

def bake_humanik_animation():
    """
    Bakes the HumanIK animation onto the skeleton joints.
    """
    # List all joints
    all_joints = cmds.ls(type='joint')
    
    # Select the joints
    cmds.select(all_joints, hierarchy=True)
    
    # Bake the animation
    cmds.bakeResults(
        simulation=True,
        time=(cmds.playbackOptions(q=True, minTime=True), cmds.playbackOptions(q=True, maxTime=True)),
        sampleBy=1,
        disableImplicitControl=True,
        preserveOutsideKeys=True,
        sparseAnimCurveBake=False,
        removeBakedAttributeFromLayer=False,
        bakeOnOverrideLayer=False,
        minimizeRotation=True,
        controlPoints=False,
        shape=False
    )
    print("HumanIK animation baked to skeleton joints.")

def custom_prompt_dialog(custom_message):
    """
    Prompts the user for input with a custom message using Maya's promptDialog.
    
    Args:
        custom_message(str): The string is to retrieve and input the custom message.
    """
    # Show prompt dialog with custom message
    result = cmds.promptDialog(
        title='Custom Input', 
        message=custom_message, 
        button=['OK','Cancel'], 
        defaultButton='OK', 
        cancelButton='Cancel')
    
    # Check the result of the prompt dialog
    if result == 'OK':
        user_input = cmds.promptDialog(query=True, text=True)
        print(f"User input: {user_input}")
    else:
        print("Prompt dialog cancelled by user.")
    return user_input

def select_objects_by_name_pattern(pattern):
    """
    Selects objects in the Maya Outliner whose names match a specific pattern.
    
    Args:
        pattern(str): The string pattern to search for in object names.
    """
    # Get all objects in the Maya scene by retrieving their DAG and long (full path names)
    all_objects = cmds.ls(dag=True, long=True)
    
    # Filter objects based on the name pattern
    #matching_objects = [obj for obj in all_objects if pattern in obj]
    matching_objects=[]
    for obj in all_objects:
        if pattern in obj:
            matching_objects.append(obj)
    
    # Select the matching objects in the Outliner with the object hierarchy selected
    cmds.select(matching_objects, replace=True, hierarchy=True)

def normalize_path(path):
    return path.replace('\\', '/')
    
def export_selected_FBX(name):
    """
    Exports selected assets in the Outliner as an .FBX file in the same directory as this Maya file
    
    Args:
        name(str): The string name to save the file as.
    """
    scene_file_path = cmds.file(q=True, sceneName=True)
    file_dir = os.path.dirname(scene_file_path)
    file_path = os.path.join(file_dir, f"{name}.fbx")
    
    file_path = normalize_path(file_path)  # Normalize path
    
    print(f"Exporting to: {file_path}")
    
    cmds.loadPlugin("fbxmaya", quiet=True)
    
    # Set FBX export options using MEL commands
    mel.eval('FBXExportSmoothingGroups -v true;')
    mel.eval('FBXExportSmoothMesh -v true;')
    mel.eval('FBXExportTriangulate -v true;')
    mel.eval('FBXExportAnimationOnly -v false;')
    mel.eval('FBXExportBakeComplexAnimation -v true;')
    mel.eval('FBXExportApplyConstantKeyReducer -v true;')  # Apply constant key reducer if needed
    mel.eval('FBXExportAnimation -v true;')  # Explicitly enable animation export
    mel.eval('FBXExportConstraints -v true;')
    mel.eval('FBXExportSkins -v true;')
    mel.eval('FBXExportShapes -v true;')
    mel.eval('FBXExportInputConnections -v true;')
    mel.eval('FBXExportEmbeddedTextures -v true;')
    mel.eval('FBXExportSkeletonDefinitions -v true;')
    
    # Export the selected object(s)
    mel.eval(f'FBXExport -f "{file_path}" -s;')

#bake_humanik_animation()

# Specify the string pattern to search for in object names    
search_pattern = custom_prompt_dialog('Please input naming convention of objects you wish to select:')

# Call the function to select objects with names containing the specified pattern
select_objects_by_name_pattern(search_pattern)

# Specify the string pattern to search for in object names    
asset_name = custom_prompt_dialog('Please input desired name of asset to be exported:')

# Export selected assets in Outliner as .FBX file
export_selected_FBX(asset_name)