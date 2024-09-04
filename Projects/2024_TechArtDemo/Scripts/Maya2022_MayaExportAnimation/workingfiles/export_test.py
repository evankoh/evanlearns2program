import maya.cmds as cmds
import maya.mel as mel

class Main_Window(object):
    
    # Constructor
    def __init__(self):
        
        self.window = "Main_Window"
        self.title = "Animation Exporter"
        self.size = (400, 400)
        
        # Close window if same window is currently opened
        if cmds.window(self.window, exists = True):
            cmds.deleteUI(self.window, window = True)
        
        # Create new window
        self.window = cmds.window(self.window, title = self.title, widthHeight = self.size)
        
        # Creates new column layout that automatically adjusts to fit width of layout
        cmds.columnLayout(adjustableColumn = True)
        
        cmds.text(self.title)
        cmds.separator(height = 20)
        
        self.assets = cmds.checkBoxGrp( numberOfCheckBoxes=1, label1='Three Buttons')
        
        self.exportbutton = cmds.button(label = 'export')
        
        # Display new window
        cmds.showWindow()

def export_referenced_assets(file_path_base):
    # Get a list of all referenced files
    references = cmds.file(q=True, reference=True)
    
    # Iterate over each reference to get its namespace and export individually
    for ref in references:
        namespace = cmds.referenceQuery(ref, namespace=True)
        print(f"Processing reference: {ref} with namespace: {namespace}")
        
        # Select all objects within the namespace
        objects_in_namespace = cmds.ls(namespace + ":*", type="transform")
        
        if objects_in_namespace:
            print(f"Objects found in namespace {namespace}: {objects_in_namespace}")
            cmds.select(objects_in_namespace, replace=True)
            
            # Construct the export file path for each referenced asset
            file_path = f"{file_path_base}_{namespace.replace(':', '_')}.fbx"
            
            # Export the selected objects with the correct up-axis
            export_fbx_selection_with_correct_up_axis(file_path)
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

# Example usage
#export_referenced_assets("D:/Admin/Python/pythonlearning/Projects/2024_TechArtDemo/Scripts/Maya2022_MayaExportAnimation/exported_asset")

myWindow = Main_Window()