# Maya Export Animation Python Tool for Autodesk Maya 2022

## A Python Tool to allow users to export specific referenced assets and/or Unreal Engine camera object from Maya scene as individual FBX files. This tool is mainly used for exporting assets from Maya scene files containing animation data of multiple referenced assets for external software such as Unreal Engine.

This Python Tool was created with the intention of allowing users to:

* Call Python Tool from Script Editor or Script saved to Maya shelf
* Allow user to select a checklist of assets referenced in the Maya scene file as well as the Unreal Engine specific 'Cine_Camera_Actor' object (the listed assets will all be checked by default)
* The tool will then export every checked asset as individual FBX files into the same file directory as the Maya scene file with the appropriate naming convention (Maya scene file name as the prefix, asset name as the root word). This is to ensure smooth and efficient transfer of mesh, rig and animation data across different software and game engines (e.g. Unreal Engine)

## Access relevant files for tool flow and logic

* Process of creating code documented on my wordpress: https://evanlearns2program.wordpress.com/

## How to run code (for Windows, Autodesk Maya 2022):

1. Download MayaExportAnimation_V003.py
2. Open Maya 2022, open the Script Editor window and drag Python file into Python editor or copy-paste the contents of the Python file into Python editor (ensure that the Script Editor is on the Python editor, not MEL editor)
3. Either save script into current Maya shelf (File > Save Script to Shelf) or execute script directly from Script Editor (strongly advise to save script to shelf if you are planning on using the script often)

## How to edit this project for your own use

Please reach out to me via email if you wish to advise and implement changes directly into the source code: kwh.evan@gmail.com

Otherwise, you may download the python file and edit it for your own analysis.

## Want to help?

If you wish to help make this code better, you can reach out to me via email: kwh.evan@gmail.com

## Known issues

* Tool does not allow users to pinpoint the file directory of the newly exported assets

## Like this code?

If you liked this code, please feel free to reach out to me via email and I would love to hear from you!