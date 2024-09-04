# Copyright 2024 by Evan Koh Wen Hong

import maya.cmds as cmds
import maya.mel as mel
import os

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

def export_selected_FBX(name):
    """
    Exports selected assets in the Outliner as .FBX file in the same directory as this Maya file
    
    Args:
        name(str): The string name to save the file as.
    """
    # Construct the file path with the desired naming convention and file extension
    scene_file_path = cmds.file(q=True, sceneName=True)
    
    # To retrieve the directory name of the current Maya scene file
    file_dir = os.path.dirname(scene_file_path)
    
    # To create the file path for the exported asset
    file_path = os.path.join(file_dir, f"{name}.fbx")
    
    # Open the Game Exporter UI
    mel.eval('gameExporter')

    # Set the file path for export
    cmds.textField('gameExp_FilenameField', edit=True, text=file_path)

    # Set the frame range from the time slider
    frame_start = cmds.playbackOptions(query=True, minTime=True)
    frame_end = cmds.playbackOptions(query=True, maxTime=True)
    cmds.intField('gameExp_FrameRangeStart', edit=True, value=int(frame_start))
    cmds.intField('gameExp_FrameRangeEnd', edit=True, value=int(frame_end))

    # Enable export of the currently selected objects
    cmds.checkBox('gameExp_ExportSelectedCheckbox', edit=True, value=True)

    # Trigger the export process
    cmds.button('gameExp_ExportButton', execute=True)

# Specify the string pattern to search for in object names    
search_pattern = custom_prompt_dialog('Please input root name of asset you wish to export: (e.g. ASSET)')

# Call the function to select objects with names containing the specified pattern
select_objects_by_name_pattern(search_pattern)

# Specify the string pattern to search for in object names    
asset_name = custom_prompt_dialog('Please input desired name of asset to be exported: (e.g. PR001_Frisbee_V001)')

# Export selected assets in Outliner as .FBX file
export_selected_FBX(asset_name)