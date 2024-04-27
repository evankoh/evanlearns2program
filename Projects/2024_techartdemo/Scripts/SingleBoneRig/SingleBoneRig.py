# Copyright 2024 by Evan Koh Wen Hong, Scrawl Animation

import maya.cmds as cmds
import os



###### To define functions in script ######



def deselect_All():
    # To deselect all assets in scene
    cmds.select(deselect=True)

def find_Objects_Name_By_Type(asset_type):
    """
    To identify objects' names based on their respective asset types.
    
    Args:
        asset_type(str): The string asset type to identify objects' names.
    """
    # Get all objects in the Maya scene by retrieving their DAG and long (full path names)
    all_objects = cmds.ls(type=asset_type, long=False)
    print(all_objects)
    
    # To filter out assets based on type and assign to a variable
    filtered_objects = []
    for obj in all_objects:
        if asset_type == 'mesh':
            parent_nodes = cmds.listRelatives(obj, parent=True, fullPath=True)
            print(f'parent nodes for {all_objects}: {parent_nodes}')
            # Check if listRelatives returned a valid result
            if parent_nodes:
                parent_node = parent_nodes[0]  # Extract the parent node from the list
                filtered_objects.append(parent_node)
            else:
                # If listRelatives returned None, print a warning and skip this object
                print(f"Warning: Unable to retrieve parent node for object '{obj}'")
        elif asset_type == 'joint':
            filtered_objects = all_objects

    return filtered_objects

def select_Objects_By_Name_Pattern(pattern):
    """
    Selects objects in the Maya Outliner whose names match a specific pattern.
    
    Args:
        pattern(str): The string pattern to search for in object names.
    """
    # Get all objects in the Maya scene by retrieving their DAG and long (full path names)
    all_objects = cmds.ls(dag=True, long=True)
    
    # Filter objects based on the name pattern
    matching_objects = []
    for obj in all_objects:
        if pattern in obj:
            matching_objects.append(obj)
    
    # Select the matching objects in the Outliner with the object hierarchy selected
    cmds.select(matching_objects, replace=True, hierarchy=True)

def select_Objects_By_Type(asset_type):
    """
    Selects objects in the Maya Outliner whose names match a specific pattern.
    
    Args:
        asset_type(str): The string asset_type to search for in object names.
    """
    # Get all objects in the Maya scene by retrieving their DAG (directed acyclic graph)
    counter = 0
    for i in asset_type:
        objects_type = cmds.ls(type=i, dag=True)
        print(f'object type: {objects_type}')
        if counter == 0:
            cmds.select(objects_type, replace=True, hierarchy=True)
            print(f'Selected {objects_type}.')
            counter += 1
        elif counter > 0:
            cmds.select(objects_type, add=True, hierarchy=True)
            print(f'Selected {objects_type}.')
            counter += 1   

def rename_Asset(old_name, new_name):
    """
    Identify asset (already exists), select and rename to desired naming convention (to rename curves to proper naming conventions)
    
    Args:
        old_name(str): Name of the asset to rename
        new_name(str): New name for the asset
    """
    # Select the asset to rename
    select_Objects_By_Name_Pattern(old_name)
    
    # Renames the asset to the new name
    cmds.rename(old_name, new_name)
    
    # To deselect all selected objects
    deselect_All()
    
    print(f"The asset, {old_name}, has been renamed to {new_name}.")

def delete_History_Free_Transform_All():
    """
    Identify asset (already exists), select and delete history and freeze transformations
    """
    # Select all objects in outliner
    all_objects = cmds.ls(dag=True, long=True)
    cmds.select(all_objects, replace=True, hierarchy=True)
    
    # Freeze transformations
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0, preserveNormals=True)
    
    # Delete history
    cmds.delete(constructionHistory=True)
    
    # To deselect all selected objects
    deselect_All()
    
    print(f"Deleted history and freeze transformations for all objects in the outliner.")

def create_Single_Joint():
    """
    To create a single joint at World Origin Position
    """
    # Create single joint
    joint = cmds.joint()
    
    # To hide joint
    cmds.hide(joint)
    
    print(f"Created joint: {joint}")

def parent_Objects(child_object, parent_object):
    """
    To parent an object to another
    
    Args:
        child_object(str): object to be assigned and parented as child object
        parent_object(str): object to be assigned and parented to as parent object
    """
    # Assign original scale value of child object to variable before parenting
    child_scale = cmds.xform(child_object, query=True, scale=True, worldSpace=True)
    
    # Parent object to another object
    cmds.parent(child_object, parent_object, a=True, s=True)
    
    # Set the scale of the child object back to its original scale after parenting
    cmds.xform(child_object, scale=child_scale, worldSpace=True)
    
    # To deselect all selected objects
    deselect_All()
    
    print(f"{child_object} has been parented to {parent_object}.")

def bind_Meshes_To_Joint(meshlst):
    """
    To create a skin cluster for each mesh and bind to joint
    
    Args:
        meshlst(list): list of mesh objects to be binded to joint
    """
    # Deselect all objects in outliner
    cmds.select(deselect=True)
    
    for mesh in meshlst:
        # Select mesh individually with replace=True to clear previous selection
        cmds.select(mesh, replace=True)
        print(mesh)

        # Check if any objects are selected
        selected_objects = cmds.ls(selection=True)
        if not selected_objects:
            print("No mesh object selected.")
            continue

        # Check if more than one object is selected
        if len(selected_objects) > 1:
            print("More than one object selected. Skipping.")
            continue
        
        # Create skin cluster for the selected mesh
        skin_cluster = cmds.skinCluster('joint1', mesh, toSelectedBones=True)
        if not skin_cluster:
            print(f"Failed to create skin cluster for {mesh}.")
            continue
        
        print(f"Skin cluster created for {mesh}.")

def parent_Constraint(parent_object, child_object):
    """
    To parent constraint an object (child) to another object (parent).
    
    Args:
        child_object(str): object to constraint to another
        parent_object(str): object to be constraint to
    """
    # Parent constraint objects
    cmds.parentConstraint(parent_object, child_object)
    
    print(f"{child_object} has been parent constraint to {parent_object}.")

def scale_Constraint(parent_object, child_object):
    """
    To scale constraint an object (child) to another object (parent).
    
    Args:
        child_object(str): object to constraint to another
        parent_object(str): object to be constraint to
    """
    # Scale constraint objects
    cmds.scaleConstraint(parent_object, child_object)
    
    print(f"{child_object} has been scale constraint to {parent_object}.")
    
def group_Objects(objects_to_group, group_name, group_parent, parent_name):
    """
    To group objects in a group and if the newly-created group needs to be parented to another asset/group, 
    the group will be parented accordingly.
    
    Args:
        objects_to_group(str/list): objects to be grouped into newly-created group
        group_name(str): name of group created
        group_parent(boolean): to check if group is to be parented to other assets in scene
        parent_name(str): name of parent asset if newly-created group is to be parented
    """
    # If group needs to be created and parented to another asset/group
    if group_parent:
        cmds.group(objects_to_group, name=group_name, parent=parent_name)
        print(f'''New group, {group_name}, has been created to group the following objects:
{objects_to_group}
{group_name} was created under this parent asset, {parent_name}.
''')
        
    # If group needs to be created without being parented to another asset/group
    elif group_parent == False:
        cmds.group(objects_to_group, name=group_name)
        print(f'''New group, {group_name}, has been created to group the following objects:
{objects_to_group}
''')



###### To initiate functions and run script as intended ######



# Assign old and new names for controllers into variables to rename controllers
old_ctrl_1 = 'nurbsCircle1'
old_ctrl_2 = 'nurbsCircle2'

new_ctrl_1 = 'ctrl1_main'
new_ctrl_2 = 'ctrl1_main2'

oldlst = [old_ctrl_1, old_ctrl_2]

for i in oldlst:
    if i == old_ctrl_1:
        rename_Asset(i, new_ctrl_1)
    elif i == old_ctrl_2:
        rename_Asset(i, new_ctrl_2)

# Create a single joint
create_Single_Joint()

# Delete history and freeze transformations for mesh and controllers
delete_History_Free_Transform_All()

# Parent main controller to the main2 controller
parent_Objects(new_ctrl_2, new_ctrl_1)

# Assign mesh and joint objects in outliner to respective variables to bind skin
type_mesh = find_Objects_Name_By_Type('mesh')
type_joint = find_Objects_Name_By_Type('joint')
print(f'mesh(es) are {type_mesh}; joint is {type_joint}.')

# Bind mesh objects to joint
bind_Meshes_To_Joint(type_mesh)

# Constraint (parent, scale) joint to controller
parent_Constraint(new_ctrl_2, 'joint1')
scale_Constraint(new_ctrl_2, 'joint1')

# Group objects into the correct hierarchy with the proper naming conventions
group_Objects(type_mesh, 'MOD', False, None)
group_Objects('MOD', 'ASSET', False, None)
group_Objects(new_ctrl_1, 'MotionSystem', False, None)
group_Objects('MotionSystem', 'Group', False, None)
group_Objects('joint1', 'DeformationSystem', True, 'Group')
group_Objects('Group', 'RIG', True, 'ASSET')