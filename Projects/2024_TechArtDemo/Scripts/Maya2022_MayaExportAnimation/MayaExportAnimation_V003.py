import maya.cmds as cmds
import maya.mel as mel
import os

class Main_Window(object):
    
    # Constructor
    def __init__(self):
        
        self.window = "Main_Window"
        self.title = "Animation Exporter"
        self.size = (400, 400)
        
        # Close window if the same window is currently opened
        if cmds.window(self.window, exists=True):
            cmds.deleteUI(self.window, window=True)
        
        # Create a new window
        self.window = cmds.window(self.window, title=self.title, widthHeight=self.size)
        
        # Creates a new column layout that automatically adjusts to fit the width of the layout
        cmds.columnLayout(adjustableColumn=True)
        
        cmds.text(self.title)
        cmds.separator(height=20)
        
        # Get a list of all referenced files
        references = cmds.file(q=True, reference=True)
        
        # Sort the references alphabetically
        references.sort(key=lambda ref: cmds.referenceQuery(ref, namespace=True).lstrip(':'))
        
        # Create a checkbox for each referenced asset (default checked)
        self.checkboxes = []
        for ref in references:
            # Use the reference name as the label for the checkbox (remove leading ':')
            namespace = cmds.referenceQuery(ref, namespace=True).lstrip(':')
            checkbox = cmds.checkBoxGrp(numberOfCheckBoxes=1, label1=namespace, value1=True)
            self.checkboxes.append(checkbox)
        
        # Check if "Cine_Camera_Actor" exists in the outliner
        self.camera_checkbox = None
        if cmds.objExists("Cine_Camera_Actor"):
            cmds.separator(height=20)
            self.camera_checkbox = cmds.checkBoxGrp(numberOfCheckBoxes=1, label1="Cine_Camera_Actor", value1=True)

        cmds.separator(height=20)  # Add some space before the export button

        # Create the export button at the bottom
        self.exportbutton = cmds.button(label='Export', command=self.export_selected_assets)
        
        # Display the new window
        cmds.showWindow()
    
    def export_selected_assets(self, *args):
        # Get the current Maya scene name and directory (without extension)
        scene_file_path = cmds.file(q=True, sn=True)
        scene_name = os.path.splitext(os.path.basename(scene_file_path))[0]
        if not scene_name:
            scene_name = "untitled_scene"

        # Use the directory of the Maya scene file as the export directory
        export_dir = os.path.dirname(scene_file_path)

        # Ensure all slashes are forward slashes for compatibility
        export_dir = export_dir.replace('\\', '/')
        
        # Export selected assets
        for checkbox in self.checkboxes:
            value = cmds.checkBoxGrp(checkbox, query=True, value1=True)
            label = cmds.checkBoxGrp(checkbox, query=True, label1=True)
            if value:
                print(f"Exporting asset: {label}")
                # Call the export function with the selected asset's namespace
                export_referenced_assets(export_dir, scene_name, label)
                
        # Check if the user wants to export "Cine_Camera_Actor"
        if self.camera_checkbox and cmds.checkBoxGrp(self.camera_checkbox, query=True, value1=True):
            camera_file_path = f"{export_dir}/{scene_name}_Cine_Camera_Actor.fbx"
            cmds.select("Cine_Camera_Actor")
            export_fbx_selection_with_correct_up_axis(camera_file_path)
            print(f"Exported Cine_Camera_Actor to {camera_file_path}")

        # Notify the user that the export is complete
        cmds.confirmDialog(title='Export Completed', message='The export has been successfully completed.', button=['OK'])

def export_referenced_assets(export_dir, scene_name, namespace):
    # Select all objects within the namespace
    objects_in_namespace = cmds.ls(namespace + ":*", type="transform")
    
    if objects_in_namespace:
        cmds.select(objects_in_namespace, replace=True)
        
        # Construct the export file path using the scene name
        file_path = f"{export_dir}/{scene_name}_{namespace}.fbx"
        
        # Set the FBX up-axis to Z (for Unreal Engine)
        mel.eval('FBXExportUpAxis "z"')
        
        # Set the frame range to match the time slider
        start_frame = cmds.playbackOptions(q=True, minTime=True)
        end_frame = cmds.playbackOptions(q=True, maxTime=True)
        
        # Set the FBX export options
        mel.eval('FBXExportBakeComplexAnimation -v true')
        mel.eval('FBXExportBakeComplexStart -v {}'.format(start_frame))
        mel.eval('FBXExportBakeComplexEnd -v {}'.format(end_frame))
        mel.eval('FBXExportInputConnections -v false')
        
        # Perform the export for the currently selected objects
        cmds.select(cmds.ls(sl=True))
        mel.eval('FBXExport -f "{}" -s'.format(file_path))
        print(f"Exported to {file_path}")
    else:
        print(f"No objects found in namespace: {namespace}")

def export_fbx_selection_with_correct_up_axis(file_path):
    # Set the FBX up-axis to Z (for Unreal Engine)
    mel.eval('FBXExportUpAxis "z"')
    
    # Set the frame range to match the time slider
    start_frame = cmds.playbackOptions(q=True, minTime=True)
    end_frame = cmds.playbackOptions(q=True, maxTime=True)
    
    # Set the FBX export options
    mel.eval('FBXExportBakeComplexAnimation -v true')
    mel.eval('FBXExportBakeComplexStart -v {}'.format(start_frame))
    mel.eval('FBXExportBakeComplexEnd -v {}'.format(end_frame))
    mel.eval('FBXExportInputConnections -v false')

    # Perform the export for the currently selected objects
    cmds.select(cmds.ls(sl=True))
    mel.eval('FBXExport -f "{}" -s'.format(file_path))
    print(f"Exported to {file_path}")

# Create the UI
Main_Window()
