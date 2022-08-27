Scriptname _CTB_BanditScript extends ReferenceAlias  
Faction Property dunPrisonerFaction Auto
Faction Property _CTB_BanditWaitingCapture Auto
Package Property _CTB_FollowPlayer Auto
Package Property _CTB_FollowGuard Auto
int property jarlstage auto

Actor Property PlayerRef Auto

Event OnEnterBleedout()
Actor NPC = GetActorReference()
NPC.RemoveFromAllFactions()
NPC.AddToFaction(dunPrisonerFaction)
NPC.AddToFaction(_CTB_BanditWaitingCapture)
NPC.ModActorValue("Aggression", 0)
NPC.ModActorValue("Confidence", 0)
NPC.SetRelationShipRank(PlayerRef, -4)
NPC.AllowBleedoutDialogue(true)
NPC.AllowPCDialogue(true)
NPC.StopCombat()
NPC.StopCombatAlarm()
EndEvent

Event OnPackageStart(Package akNewPackage)

If akNewPackage == _CTB_FollowPlayer
GetOwningQuest().setStage(35)
elseif akNewPackage == _CTB_FollowGuard
GetOwningQuest().setStage(jarlstage)
endif
EndEvent