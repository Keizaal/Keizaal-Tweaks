Scriptname _CTB_PlayerTakesHead extends ReferenceAlias  

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

If akBaseItem == Head && Bounty.GetActorReference().IsDead() == True
Game.FadeOutGame(false, true, 0.7, 1.6)
WPNImpactAxeVsFleshSDLarge.Play(PlayerRef)
Utility.Wait(1.5)
(Bounty.GetActorReference()).UnequipItemSlot(30)
(Bounty.GetActorReference()).EquipItem(Headless)
GetOwningQuest().setStage(stage)
endif
endevent

miscobject property head auto
ReferenceAlias Property Bounty Auto
Sound Property WPNImpactAxeVsFleshSDLarge Auto
Actor Property PlayerRef Auto
Armor Property Headless Auto
int property stage auto
