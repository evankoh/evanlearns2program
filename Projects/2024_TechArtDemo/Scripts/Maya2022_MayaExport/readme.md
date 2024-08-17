# Maya Export Python Tool for Autodesk Maya 2022

## A Python Tool to automate the export of asset in the Maya scene file.

This Python Tool was created with the intention of allowing users to:

* Call Python Tool from Script Editor or Script saved to Maya shelf
* Prompt user to input name of asset hierarchy to export from scene file
* Prompt user to input destination file path of exported asset as .fbx file
* Automation of export for asset hierarchy from Maya scene file into desired destination file path as .fbx file (this is especially helpful when exporting asset to other software e.g. Unreal Engine)
* This tool works for both rigged and non-rigged assets in Maya 2022
* This tool exports the following data into the .fbx file:
- Mesh with skin weights
- Rig / Bone hierarchy
- Facial blend shapes
- Material IDs
- HumanIK configuration "Custom Rig Mapping"

## Access relevant files for tool flow and logic

* Process of creating code documented on my wordpress: https://evanlearns2program.wordpress.com/

## How to run code (for Windows, Autodesk Maya 2022):

1. Download MayaExport_V002.py
2. Open Maya 2022, open the Script Editor window and drag Python file into Python editor or copy-paste the contents of the Python file into Python editor (ensure that the Script Editor is on the Python editor, not MEL editor)
3. Either save script into current Maya shelf (File > Save Script to Shelf) or execute script directly from Script Editor (strongly advise to save script to shelf if you are planning on using the script often)

## How to edit this project for your own use

Please reach out to me via email if you wish to advise and implement changes directly into the source code: kwh.evan@gmail.com

Otherwise, you may download the python file and edit it for your own analysis.

## Want to help?

If you wish to help make this code better, you can reach out to me via email: kwh.evan@gmail.com

## Known issues

The following technical concerns may be addressed in further updates (mainly addressing concerns faced when importing the exported .fbx files into Unreal Engine, as of 19/04/2024):

* Tool can only export assets one by one with input from user on which asset to select for export (does not support mass export from Maya scene file)
* Tool is unable to export animation data from Maya scene file

## Like this code?

If you liked this code, please feel free to reach out to me via email and I would love to hear from you!