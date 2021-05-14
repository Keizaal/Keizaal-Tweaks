;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 33
Scriptname QF_0WRThaneQ01FirstRaid_053436A3 Extends Quest Hidden

;BEGIN ALIAS PROPERTY StormcloakSteward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StormcloakSteward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider1B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider1B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider4B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider4B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider2C
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider2C Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider3A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider3A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider4A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider4A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Vilde
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Vilde Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider6B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider6B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider1B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider1B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider3A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider3A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider1A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider1A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2SabrecatB
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2SabrecatB Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider2A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider2A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2SabrecatA
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2SabrecatA Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThaneHroa
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThaneHroa Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider3C
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider3C Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider2A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider2A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider1A
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider1A Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Courier
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Courier Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThaneValdemaar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThaneValdemaar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bodyguard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bodyguard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider3B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider3B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider3B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider3B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider5B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider5B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider2B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider2B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ImperialSteward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ImperialSteward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2Mammoth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2Mammoth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave1TundraRaider2B
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave1TundraRaider2B Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Gudling
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gudling Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider1C
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider1C Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wave2TundraRaider4C
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wave2TundraRaider4C Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
SetObjectiveCompleted(60)
    if PlayerRef.GetAV("LightArmor") > PlayerRef.GetAV("HeavyArmor")
        ; Player's Light Armour skill is higher, so add the light armour piece(s)
        Game.GetPlayer().additem(LAVariant, 1)
    Else
        Game.GetPlayer().additem(HAVariant, 1)
    endif
VildeActor.SetOutfit(VildeNormal)
OrcActor.SetOutfit(OrcNormal)
Wave1.disable()
Wave2.disable()
Deco.enable()
idles.disable()
Wave1.delete()
Wave2.delete()
idles.delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetObjectiveDisplayed(45)
Wave1.disable()
Wave2.enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
Wave1.enable()
SetObjectiveDisplayed(30)
ActorBoss1.StartCombat(ActorHroa)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
Utility.Wait(0.5)
SetObjectiveDisplayed(27)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
SetObjectiveCompleted(45)
SetObjectiveDisplayed(50)
Alias_ThaneHroa.GetActorReference().ModFavorPointsWithGlobal(MinorRelationBoost)
Alias_ThaneValdemaar.GetActorReference().ModFavorPointsWithGlobal(MinorRelationBoost)
Alias_Vilde.GetActorReference().ModFavorPointsWithGlobal(MinorRelationBoost)
Alias_Gudling.GetActorReference().ModFavorPointsWithGlobal(MinorRelationBoost)
Alias_Bodyguard.GetActorReference().ModFavorPointsWithGlobal(MinorRelationBoost)
SetStage(51)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(30)
SetObjectiveDisplayed(35)
SetStage(36)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
MsCourier.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(20)
Utility.Wait(0.5)
SetObjectiveDisplayed(25)
Utility.Wait(20.0)
Setstage(26)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
setObjectiveCompleted(15)
Utility.Wait(0.5)
setObjectiveDisplayed(20)
idles.enable()
VildeActor.SetOutfit(VildeArmor)
OrcActor.SetOutfit(OrcHeavy)
ActorHroa.Moveto(MiddleOrigin)
Gudling.Moveto(MiddleOrigin)
Bodyguard.Moveto(MiddleOrigin)
ActorVald.Moveto(MiddleOrigin)
VildeActor.Moveto(MiddleOrigin)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
Utility.Wait(10.0)
HornSoundDistant.Play(Game.GetPlayer())
Utility.Wait(1.0)
HornSoundImpDistant.Play(Game.GetPlayer())
Utility.Wait(3.0)
HornSound.Play(RightOrigin)
HornSound.Play(LeftOrigin)
setstage(30)
SetObjectiveCompleted(25)
SetObjectiveCompleted(27)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Game.GetPlayer().additem(StartNote,1)
MsCourier.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(35)
Utility.Wait(15.0)
HornSoundDistant.Play(Game.GetPlayer())
Utility.Wait(1.0)
HornSoundImpDistant.Play(Game.GetPlayer())
Utility.Wait(3.0)
HornSound.Play(RightOrigin)
HornSound.Play(LeftOrigin)
setstage(45)
SetObjectiveCompleted(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property MsCourier  Auto  

Quest Property MQ104  Auto  

Book Property StartNote  Auto  

ObjectReference Property Wave1  Auto  

ObjectReference Property Wave2  Auto  

Sound Property HornSound  Auto  

Sound Property HornSoundDistant  Auto  

Sound Property HornSoundImp  Auto  

Sound Property HornSoundImpDistant  Auto  

ObjectReference Property RightOrigin  Auto  

ObjectReference Property LeftOrigin  Auto  

ObjectReference Property MiddleOrigin  Auto  

Actor Property ActorHroa  Auto  

Actor Property ActorBoss1  Auto  

ObjectReference Property Idles  Auto  

Armor Property RewardArmor  Auto  

Armor Property RewardShield  Auto  

Armor Property RewardHelm  Auto  

Actor Property VildeActor  Auto  

Actor Property OrcActor  Auto  

Outfit Property VildeArmor  Auto  

Outfit Property VildeNormal  Auto  

Outfit Property OrcHeavy  Auto  

Outfit Property OrcNormal  Auto  

ObjectReference Property Deco  Auto  

GlobalVariable Property MinorRelationBoost  Auto  

LeveledItem Property LAVariant  Auto  

LeveledItem Property HAVariant  Auto  

Actor Property PlayerRef  Auto  

Actor Property ActorVald  Auto  

Actor Property Bodyguard  Auto  

Actor Property Gudling  Auto  
