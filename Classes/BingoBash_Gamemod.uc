class BingoBash_Gamemod extends GameMod
	config(Mods);

var config int unlockCruise;
var config int ShowDebugMessages;
var config int RemoveAllParentsDW;
var config int RemoveLevelRequirementDW;
var int cruiseTimepiecesRequired;


event OnModLoaded()
{

    //TODO: Refactor this, remove UnlockDW 

   UnlockDW();
}

//TODO Implement command to lock and unlock all again in case the mod is setup wrong.
event OnTimePieceCollected(string Identifier){
    if(Identifier == "snatcher_boss"){
        UnlockDW();

    }
    if(`GameManager.GetTimeObjects() == cruiseTimepiecesRequired) UnlockBoat();
    
    
}

event OnConfigChanged(Name ConfigName){

    if(ConfigName == 'ShowDebugMessages'){

        if(ShowDebugMessages == 0){
            isdebugEnabled = false;
        } else{
            isdebugEnabled = true;
        }
    }
    if(ConfigName == 'unlockCruise'){

        cruiseTimepiecesRequired = unlockCruise;
        Hat_ChapterInfo'HatinTime_ChapterInfo_DLC1.ChapterInfos.ChapterInfo_Cruise'.RequiredHourglassCount = cruiseTimepiecesRequired;
    }
    if(ConfigName == 'RemoveAllParentsDW'){

        if(RemoveAllParentsDW == 0){
            removeParentsDW = false;
        } else{
            removeParentsDW = true;
        }
    }
    if(ConfigName == 'RemoveLevelRequirementDW'){

        if(RemoveLevelRequirementDW == 0){
            removeLevelReqDW = false;
        } else{
            removeLevelReqDW = true;
        }
    }


}

function static RemoveAllStampRequirements()
{
    local Array<class<object>> ObjectClasses;
    local class<Hat_SnatcherContract_DeathWish> DeathWish;
    local Hat_SnatcherContract_DeathWish DefaultContract;
    local int i;
    local Array<class<Hat_SnatcherContract_DeathWish>> ParentDeathWishes;

    ObjectClasses = class'Hat_ClassHelper'.static.GetAllScriptClasses("Hat_SnatcherContract_DeathWish");
    for (i = 0; i < ObjectClasses.Length; i++)
    {
        DeathWish = class<Hat_SnatcherContract_DeathWish>(ObjectClasses[i]);

        if (DeathWish.GetPackageName() != 'HatinTimeGameContent') continue;
        if (!DeathWish.static.ConsiderForDeathWishTotal()) continue;

        DefaultContract = Hat_SnatcherContract_DeathWish(DynamicLoadObject("HatinTimeGameContent.Default__" $ string(DeathWish), class'Hat_SnatcherContract_DeathWish', true));
        if (DefaultContract == None) continue;
        
        DefaultContract.RequiredStamps = 0;
        //Remove requirement to clear the BaseLevel to attempt the deathwish
        if(default.RemoveAllParentsDW > 0){
            
            DefaultContract.ParentDeathWishes.Length = 0;
        }
            

        if(default.RemoveLevelRequirementDW > 0) {    
            
            SetVariable(class'WorldInfo'.static.GetWorldInfo().GetALocalPlayerController(), string(DefaultContract), "IsCommunity", "true");
        }


            
        }

    `SaveManager.SaveToFile(true);
}

function UnlockBoat(){
    UnlockDoor(Hat_ChapterInfo'HatinTime_ChapterInfo_DLC1.ChapterInfos.ChapterInfo_Cruise');
    if(Class'BingoBash_Gamemod'.static.ShowDebugMessages()){
        WorldInfo.Game.Broadcast(none,"Boat unlocked");
    }
}

function UnlockDW(){
    class'Hat_SaveBitHelper'.static.AddLevelBit("DeathWish_intro", 1, `GameManager.HubMapName);
    class'Hat_SaveBitHelper'.static.HasLevelBit("DeathWish_intro", 1, `GameManager.HubMapName);
    RemoveAllStampRequirements();

    if(Class'BingoBash_Gamemod'.static.ShowDebugMessages()){
        WorldInfo.Game.Broadcast(none,"DeathWish Unlocked after:");
    }
}

static function SetVariable(PlayerController pc, string Object, string VariableName, string Value) 
{

    pc.ConsoleCommand("set" @ Object @ VariableName @ Value, false);
}

function ResetAllChapters()
{
	Hat_ChapterInfo'HatinTime_ChapterInfo.maingame.MafiaTown'.RequiredHourglassCount = 1;
	Hat_ChapterInfo'HatinTime_ChapterInfo.maingame.subconforest'.RequiredHourglassCount = 7;
	Hat_ChapterInfo'HatinTime_ChapterInfo.maingame.trainwreck_of_science'.RequiredHourglassCount = 4;
	Hat_ChapterInfo'HatinTime_ChapterInfo.maingame.Sand_and_Sails'.RequiredHourglassCount = 14;
	Hat_ChapterInfo'HatinTime_ChapterInfo.maingame.Mu_Finale'.RequiredHourglassCount = 25;
	Hat_ChapterInfo'HatinTime_ChapterInfo.maingame.hub_spaceship'.RequiredHourglassCount = 0;
	Hat_ChapterInfo'HatinTime_ChapterInfo_DLC1.ChapterInfos.ChapterInfo_Cruise'.RequiredHourglassCount = 35;
	Hat_ChapterInfo'hatintime_chapterinfo_dlc2.ChapterInfos.ChapterInfo_Metro'.RequiredHourglassCount = 20;
}


event OnModUnloaded()
{
	ResetAllChapters();
}

function UnlockDoor(Hat_ChapterInfo ci)
{
    class'Hat_SaveBitHelper'.static.AddLevelBit(class'Hat_SpaceshipPowerPanel'.const.ActivatedLevelBit, ci.ChapterID);
}


static final function Print(coerce string msg, optional coerce string tag = "")
{
    local WorldInfo wi;
    wi = class'WorldInfo'.static.GetWorldInfo();
    if (wi == None) return;
    if(!(tag ~= "")) msg = "[" @ tag @ "] " @ msg;
    if (wi.GetALocalPlayerController() != None)
        wi.GetALocalPlayerController().TeamMessage(None, msg, 'Event', 6);
    else
        wi.Game.Broadcast(wi, msg);
}

static function bool ShowDebugMessage()
{
  return default.ShowDebugMessages > 0;
}


