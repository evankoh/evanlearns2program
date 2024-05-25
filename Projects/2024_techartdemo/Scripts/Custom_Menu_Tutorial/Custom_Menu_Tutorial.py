import unreal

def list_Menu(num=1000):    # If Unreal Tool Menu ever exceed 1000, will change accordingly
    menu_List = []
    for i in range(num):
        obj = unreal.find_object(None, f"/Engine/Transient.ToolMenus_0:RegisteredMenu_{i}")
        if not obj:
            obj = unreal.find_object(None, f"/Engine/Transient.ToolMenus_0:ToolMenu_{i}") # For backwards compatibility
            
            if not obj:
                continue
        menu_Name = str(obj.menu_name)
        if menu_Name == 'None':
            continue
        menu_List.append(menu_Name)
    return menu_List

lst_Menu = list_Menu()
for item in lst_Menu:
    print(item)
    
    