# Copyright 2024 by Evan Koh Wen Hong

from pathlib import Path as Path    # Import Path class from pathlib module to retrieve file path of assets to import
from typing import List     # Import List class to assist with the importing of assets
import unreal

# Purpose: To automate import of .FBX file into Unreal Engine

# Locate and activate Editor Utility Widget assets
def path_utility_widget(name):
    widget_path = unreal.EditorUtilitySubsystem().spawn_and_register_tab(unreal.EditorAssetLibrary.load_asset(name))
    return widget_path

# Call path_utility_widget function to locate and activate FilePathInputWidget to prompt users for file path to assets for import
def prompt_user_filepath():
    path_utility_widget("/Game/Widgets/FilePathInputWidget")
    unreal.log("Widget launched successfully.")

# Set static mesh import data and options for static mesh import
def static_importdata_options():
    static_mesh_import_data = unreal.FbxStaticMeshImportData()  # Unreal class which holds the import data options for fbx static meshes
    static_mesh_import_data.combine_meshes = True
    static_mesh_import_data.remove_degenerates = True   # remove degenerate/problematic triangles founds in mesh
    
    options = unreal.FbxImportUI()  # Unreal class containing the general options required to import fbx files (specific to neither static or skeletal meshes)
    options.import_mesh = True
    options.import_textures = False
    options.import_materials = False
    options.automated_import_should_detect_type = True
    options.static_mesh_import_data = static_mesh_import_data
    
    return options

# Set skeletal mesh import data and options for skeletal mesh import
def skeletal_importdata_options():
    skeletal_mesh_import_data = unreal.FbxSkeletalMeshImportData()  # Unreal class which holds the import data options for fbx skeletal meshes
    skeletal_mesh_import_data.set_editor_property('compute_weighted_normals', True)   # Use weighted normals algorithm (area and angle) when computing normals or tangents
    skeletal_mesh_import_data.set_editor_property('convert_scene', True)  # Convert scene from FBX coordinate system to UE coordinate system
    skeletal_mesh_import_data.set_editor_property('import_mesh_lo_ds', True)  # Create LOD models for Unreal meshes from LODS in import file
    skeletal_mesh_import_data.set_editor_property('import_meshes_in_bone_hierarchy', True)    # Meshes nested in bone hierarchies will be imported instead of being converted to bones
    skeletal_mesh_import_data.set_editor_property('import_morph_targets', True)   # Create Unreal morph objects for imported meshes
    skeletal_mesh_import_data.set_editor_property('preserve_smoothing_groups', True)  # Triangles with non-matching smoothing groups will be physically split
    skeletal_mesh_import_data.set_editor_property('use_t0_as_ref_pose', True)   # Use frame 0 as reference pose
    
    options = unreal.FbxImportUI()  # Unreal class containing the general options required to import fbx files (specific to neither static or skeletal meshes)
    options.import_mesh = True
    options.create_physics_asset = True
    options.import_as_skeletal = True
    options.import_textures = False
    options.import_materials = False
    options.automated_import_should_detect_type = True
    options.skeletal_mesh_import_data = skeletal_mesh_import_data
    
    return options

# Prompt user to select between importing of static or skeletal meshes, selection will dictate which import option function to call into the function to import the assets
def prompt_user_with_options(filepath):
    print(f"The filepath, {filepath}, has been imported into the script.")
    
    # Display the dialog box and get the user's choice
    result = unreal.EditorDialog.show_message(
        title="What is the type of meshes you are importing?",
        message='''Please select one of the following options:
        
        YES = Static Meshes
        
         NO  = Skeletal Meshes''',
        message_type=unreal.AppMsgType.YES_NO_CANCEL,  # This specifies the type of message box
        default_value=unreal.AppReturnType.YES
    )
    
    if result == unreal.AppReturnType.YES:
        print("The user has selected to import static meshes.")
        options = static_importdata_options()
        asset_filepath(filepath, result, options)
    elif result == unreal.AppReturnType.NO:
        print("The user has selected to import skeletal meshes.")
        options = skeletal_importdata_options()
        asset_filepath(filepath, result, options)
    else:
        unreal.log_warning("Operation cancelled by the user.")

# After receiving input for the assets' file path, retrieve the .fbx files in path and assign to a list for import, call function to import assets
def asset_filepath(filepath, result, options):
    print(f"Checking files in: {filepath}")
    destination_path = '/Game/Meshes'
    assets_to_import: List[Path] = list(Path(filepath).rglob('*.fbx'))  # Create a list of .fbx files found in the filepath provided and its subdirectories
    print("Found assets to import:", assets_to_import)
    
    if result == unreal.AppReturnType.YES:
        options = static_importdata_options()
        mesh_import(assets_to_import, destination_path, options)
    elif result == unreal.AppReturnType.NO:
        options = skeletal_importdata_options()
        mesh_import(assets_to_import, destination_path, options)

# Import assets into project
def mesh_import(assets_to_import, destination_path, options):
    tasks: List[unreal.AssetImportTask] = []    # Type Hinting to check if the 'task' variable has a list assigned to it holding the 'unreal.AssetImportTask' class object as an item
    
    for input_file_path in assets_to_import:
            filename_stem = input_file_path.stem # stem = method to get final path component without suffix as str; item is a Path object (see 'assets_to_import')
            if unreal.EditorAssetLibrary.does_directory_exist('/Game/Meshes/' + filename_stem):     # Checks if an asset already exists in the project via its folder; if yes, it will skip the import
                unreal.log_warning(f"Asset '{filename_stem}' already exists. Skipping to the next asset.")
            else:
                task = unreal.AssetImportTask()
                task.automated = True
                task.filename = str(input_file_path) # convert input_file_path, which is a Path object, into a string
                task.destination_path = create_folder_in_content_browser(destination_path, filename_stem)
                task.destination_name = filename_stem
                task.replace_existing = True # to replace existing assets in project if found, not skip if existing
                task.save = True # enable save with every asset imported to prevent data loss in the event of a crash
                task.options = options
                
                tasks.append(task)
    
    unreal.AssetToolsHelpers.get_asset_tools().import_asset_tasks(tasks)
    
    for task in tasks:
        for path in task.imported_object_paths: # utilize the 'import_object_paths' method in the 'AssetImportTask' class to obtain the paths to objects created / updated after import
            print(f'Imported {path}')

# Create respective folders with reference to the assets being imported into project
def create_folder_in_content_browser(destination_path, filename_stem):
    folder_path = destination_path + '/' + filename_stem
    result = unreal.EditorAssetLibrary.make_directory(folder_path)

    # Check if the folder was created successfully
    if result:
        unreal.log(f"Successfully created folder: {folder_path}")
    else:
        unreal.log_error(f"Failed to create folder: {folder_path}")
        
    return folder_path

# Run the function to prompt users for the file path of assets to import upon activating python script
def main():
    prompt_user_filepath()

# Run the main function when python script is activated
if __name__ == "__main__":
    main()