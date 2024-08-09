# FBX Import Python Tool for Unreal Engine 5.3.2

## A Python Tool to aid users in automating the importing process of static and skeletal meshes into Unreal Engine projects.

This Python Tool was created with the intention of allowing users to:

* Call Python Tool from Custom Menu, another Python Tool that I have created (please see https://github.com/evankoh/evanlearns2program/tree/main/Projects/2024_techartdemo/Scripts/UnrealEngine_init_unreal)
* Prompt user to input file path of static / skeletal meshes to import into project
* Prompt user to select between importing static or skeletal meshes (the import settings differs depending on the selection)
* Automation of import for meshes in FBX files located in file path provided
* Automation of the creation of individual folders for every FBX file imported within the 'Meshes' folder of the Content Browser

## Access relevant files for tool flow and logic

* Process of creating code documented on my wordpress: https://evanlearns2program.wordpress.com/

## How to run code (for Windows, Unreal Engine 5.3.2):

1. Download FBXImport.py and FilePathInputWidget.uasset
2. Download init_unreal.py (https://github.com/evankoh/evanlearns2program/tree/main/Projects/2024_techartdemo/Scripts/UnrealEngine_init_unreal)
3. Create new or use in existing Unreal Engine Project (may not work for versions older than 5.3.2)
4. In Unreal Engine Project, create a 'Python' folder in the 'Content' folder; place FBXImport.py and init_unreal.py into 'Python' folder
5. In Unreal Engine Project, create a 'Widgets' folder in the 'Content' folder; place FilePathInputWidget.uasset into 'Widgets' folder
6. Upon opening the Unreal Engine Project, the 'MyCustomTools' custom menu should be visible in the top menu bar of the software (right of 'Help'); run 'FBX Import' from the custom menu

## How to edit this project for your own use

Please reach out to me via email if you wish to advise and implement changes directly into the source code: kwh.evan@gmail.com

Otherwise, you may download the python file and edit it for your own analysis.

## Want to help?

If you wish to help make this code better, you can reach out to me via email: kwh.evan@gmail.com

## Known issues

The following technical concerns may be addressed in further updates:

* Tool to distinguish between static and skeletal meshes without input from user (currently, the static and skeletal meshes have to be placed into different file paths and imported separately).
* Provide user with more control over import settings if they wish to amend any parameters that were preset in the tool (the tool was created for the users to import assets easily and efficiently without the worry of selecting the wrong presets for import; however, the tool can be further improved by giving users an option if they wish to edit the preset before import).

## Like this code?

If you liked this code, please feel free to reach out to me via email and I would love to hear from you!