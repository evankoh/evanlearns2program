import maya.cmds as cmds

def custom_prompt_dialog(custom_message):
    """
    Prompts the user for input with a custom message using Maya's promptDialog.
    """
    # Show prompt dialog with custom message
    result = cmds.promptDialog(title='Custom Input', message=custom_message, button=['OK','Cancel'], defaultButton='OK', cancelButton='Cancel')
    
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
    matching_objects = [obj for obj in all_objects if pattern in obj]
    
    # Select the matching objects in the Outliner with the object hierarchy selected
    cmds.select(matching_objects, replace=True, hierarchy=True)
    
# Specify the string pattern to search for in object names    
search_pattern = custom_prompt_dialog('Please input naming convention of objects you wish to select:')

# Call the function to select objects with names containing the specified pattern
select_objects_by_name_pattern(search_pattern)