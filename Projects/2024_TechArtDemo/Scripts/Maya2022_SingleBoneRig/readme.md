# Single Bone Rig Tool for Autodesk Maya 2022

## Python Tool to automate the rigging process of simple rigs (single bone rigs) in Autodesk Maya 2022.

This Python Tool was created with the intention of allowing users to:

* Call Python Tool from Script Editor or Script saved to Maya shelf
* Automation of the process of rigging simple rigs (assets that do not require deformation for animation e.g. simple props such as cups, frisbees, phones, etc.) using a single bone rig system with a predetermined group hierarchy structure for the rigged asset
* Note that the user will need to create 2 curves to be used as the controllers for the asset rig, naming convention will be set automatically by the tool (Please see SingleBoneRig_Create_Curves.png for visual representation of requirement)

## Access relevant files for tool flow and logic

* Process of creating code documented on my wordpress: https://evanlearns2program.wordpress.com/

## How to run code (for Windows, Autodesk Maya 2022):

1. Download MayaExport.py
2. Open Maya 2022, open the Script Editor window and drag Python file into Python editor or copy-paste the contents of the Python file into Python editor (ensure that the Script Editor is on the Python editor, not MEL editor)
3. Either save script into current Maya shelf (File > Save Script to Shelf) or execute script directly from Script Editor (strongly advise to save script to shelf if you are planning on using the script often)

## How to edit this project for your own use

Please reach out to me via email if you wish to advise and implement changes directly into the source code: kwh.evan@gmail.com

Otherwise, you may download the python file and edit it for your own analysis.

## Want to help?

If you wish to help make this code better, you can reach out to me via email: kwh.evan@gmail.com

## Known issues

The following technical concerns may be addressed in further updates:

* Scale of curves revert back to the original 1,1,1 values upon running Python tool (This is a visual bug in Maya 2022, please ignore; to fix this, scale up the controller and undo, Ctrl+Z, and the scale of the controllers will readjust back to the intended scale)
* Requires user to manually create 2 curves to be used by the Python tool as controllers for the rig
* No other assets, unrelated to the asset intended for rigging, should be present in the Maya scene file when executing the Python tool (e.g. do not include other asset rigs or meshes in the Maya scene file); The Maya scene file should only consist of the 2 manually created curves and the meshes of the asset

## Like this code?

If you liked this code, please feel free to reach out to me via email and I would love to hear from you!