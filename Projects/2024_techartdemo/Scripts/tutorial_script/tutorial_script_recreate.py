import unreal
from importlib import reload

# Function to list all of the assets found in designated path
def listAssetPaths():
    EAL = unreal.EditorAssetLibrary
    # /Game is the directory of which all of the project's assets are located in
    assets = EAL.list_assets('/Game')
    for asset in assets:
        print(asset)

# Function to retrieve assets selected in Content Browser
def getSelectionContentBrowser():
    EUL = unreal.EditorUtilityLibrary
    selectedAssets = EUL.get_selected_assets()
    for selectedAsset in selectedAssets:
        print(selectedAsset)

# To get all actors found in the active level map
def getAllActors():
    EAS = unreal.EditorActorSubsystem()
    actors = EAS.get_all_level_actors()
    for actor in actors:
        print(actor)

# To retrieve actor(s) selected in the level map
def getSelectedActors():
    EAS = unreal.EditorActorSubsystem()
    selectedActors = EAS.get_selected_level_actors()
    for actor in selectedActors:
        print(actor)

def getAssetClass(classType):
    EAL = unreal.EditorAssetLibrary
    # /Game is the directory of which all of the project's assets are located in
    assetPaths = EAL.list_assets('/Game')
    
    # Empty list to store assets with the same class Type
    assets_lst = []
    
    for asset in assetPaths:
        # To find the asset data based on every item in the list
        assetData = EAL.find_asset_data(asset)
        # To find the class type from the asset's information
        assetClass = assetData.asset_class
        # If the class of the asset matches with the class type user is searching for
        if assetClass == classType:
            assets_lst.append(assetData.get_asset())
    
    for asset in assets_lst:
        print(asset)
        
    return assets_lst

listAssetPaths()