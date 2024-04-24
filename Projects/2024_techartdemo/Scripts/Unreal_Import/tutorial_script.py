import unreal
from importlib import reload

def listAssetPaths():
    EAL = unreal.EditorAssetLibrary
    assetPaths = EAL.list_assets('/Game')
    for assetPath in assetPaths:
        print(assetPath)

def getSelectionContentBrowser():
    EUL = unreal.EditorUtilityLibrary
    selectedAssets = EUL.get_selected_assets()
    for selectedAsset in selectedAssets:
        print(selectedAsset)
 
def getAllActors():
    EAS = unreal.EditorActorSubsystem()
    actors = EAS.get_all_level_actors()
    for actor in actors:
        print(actor)
        
def getSelectedActors():
    EAS = unreal.EditorActorSubsystem()
    selectedActors = EAS.get_selected_level_actors()
    for selectedActor in selectedActors:
        print(selectedActor)
        
def getAssetClass(classType):
    EAL = unreal.EditorAssetLibrary
    
    # To get the all of the assets' paths from the content folder into a list
    assetPaths = EAL.list_assets('/Game')
    
    assets = []
    
    for assetPath in assetPaths:
        # To find the full asset data for every single asset in assetPaths
        assetData = EAL.find_asset_data(assetPath)
        # To identify the class of the asset within every for loop
        assetClass = assetData.asset_class
        # To check if the class of the asset matches with the type of class user is looking for
        if assetClass == classType:
            assets.append(assetData.get_asset())
        
    for asset in assets:
        print(asset)
    
    return assets

def getStaticMeshData():
    staticMeshes = getAssetClass('StaticMesh')
    for staticMesh in staticMeshes:
        assetImportData = staticMesh.get_editor_property('asset_import_data')
        fbxFilePath = assetImportData.extract_filenames()
        print(fbxFilePath)