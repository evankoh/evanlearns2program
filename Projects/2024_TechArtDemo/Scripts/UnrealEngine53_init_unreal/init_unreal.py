# Copyright 2024 by Evan Koh Wen Hong

import unreal
import sys

def main():
    print("Creating Menus!")
    # Use get() method to retrieve the ToolMenus class and assign it to the 'menus' variable
    menus = unreal.ToolMenus.get()
    
    # Use find_menu() method to locate the "LevelEditor.MainMenu" tool menu in the ToolMenus library 
    main_menu = menus.find_menu("LevelEditor.MainMenu")
    
    # If the find_menu() method failed to find the tool menu, it will return the string as an indication
    if not main_menu:
        print("Failed to find the 'Main' menu. Please check your script.")
    
    # To create the menu entry to be inserted into the new tool menu; name of the menu entry in dev mode, 
    # what is the type of menu UI you're trying to create and where do you wish to insert the entry under 
    # the desired menu
    entry = unreal.ToolMenuEntry(
        name = 'MenuEntry.Test',
        
        # If you pass a type that is not supported, Unreal will notify you
        type = unreal.MultiBlockType.MENU_ENTRY,
        
        # This will tell unreal to insert this entry into the first spot of the menu
        insert_position = unreal.ToolMenuInsert("", unreal.ToolMenuInsertType.FIRST)
    )
    
    # Label = name of menu entry in the tool menu
    entry.set_label("Menu Entry Test")
    
    # Tool tip = message to aid users to understand what does the tool do when they hover their mouse over the tool
    entry.set_tool_tip("To test running a menu entry and printing in output log.")
    
    # Use set_string_command() method to set the command type of menu entry to python, import the python script to be 
    # assigned to the menu entry, as well as import the relevant python libraries to reload the menu entry
    # This is what happens when the button gets executed when users click it
    entry.set_string_command(unreal.ToolMenuStringCommandType.PYTHON, '', string = 'CustomMenu.py')
    print("set string command for custom menu.py")
    
    # User add_sub_menu() method to add a sub menu under the tool menu created, with the name, tool tip and sub-section of submenu
    script_menu = main_menu.add_sub_menu(main_menu.get_name(), "PythonTools", "EvanTools", "MyCustomTools")
    print("added sub menu for custom menu")
    
    # Use add_menu_entry() method to add the menu entry defined above to the newly created tool menu
    # First parameter = name of section ; Second parameter = actual script to be added
    script_menu.add_menu_entry("Scripts", entry)
    print("added menu entry")
    
    #######
    #entry2 for FBXImport.py
    entry2 = unreal.ToolMenuEntry(
        name = 'FBXImport',
        
        type = unreal.MultiBlockType.MENU_ENTRY,
        
        insert_position = unreal.ToolMenuInsert("MenuEntry.Test", unreal.ToolMenuInsertType.AFTER)
    )
    print("created entry2")
    
    entry2.set_label("FBX Import")
    print("set label entry 2")
    
    entry2.set_tool_tip("FBX Import with presets for Static and Skeletal Meshes.")
    print("set tool tip entry 2")
    
    entry2.set_string_command(unreal.ToolMenuStringCommandType.PYTHON, '', string = 'FBXImport.py')
    print("set FBXImport script to menu entry")

    script_menu.add_menu_entry("Scripts", entry2)
    print("add entry 2 to menu")
    
    # To refresh the UI to reflect the newly added custom tool menu and tool added
    menus.refresh_all_widgets()
    print("refreshing all widgets")
    
    #######
    #entry3 for tutorial_script_recreate.py
    entry3 = unreal.ToolMenuEntry(
        name = 'ListAssetsPaths',
        
        type = unreal.MultiBlockType.MENU_ENTRY,
        
        insert_position = unreal.ToolMenuInsert("MenuEntry.Test", unreal.ToolMenuInsertType.AFTER)
    )
    print("created entry3")
    
    entry3.set_label("List Asset Paths")
    print("set label entry 3")
    
    entry3.set_tool_tip("List all of the assets found in designated path.")
    print("set tool tip entry 3")
    
    entry3.set_string_command(unreal.ToolMenuStringCommandType.PYTHON, '', string = 'tutorial_script_recreate.py')
    print("set tutorial script to menu entry")

    script_menu.add_menu_entry("Scripts", entry3)
    print("add entry 3 to menu")
    
    # To refresh the UI to reflect the newly added custom tool menu and tool added
    menus.refresh_all_widgets()
    print("refreshing all widgets")

# To ensure the script does not automatically run when imported into another script
# Script will still automatically run when added to the startup of the Unreal Engine Project
if __name__ == '__main__':
    main()


