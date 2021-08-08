Scriptname _CTB_PlayerTakesHead extends ReferenceAlias  

EVENT OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
Actor a = Bounty.getActorReference()
	IF 	!GetOwningQuest().isStageDone(stage) && akBaseItem == Head && a.IsDead() == True
		Game.FadeOutGame(false, true, 0.7, 1.6)
		WPNImpactAxeVsFleshSDLarge.Play(PlayerRef)
		UI.Invoke("ContainerMenu", "_root.Menu_mc.onExitMenuRectClick")
		Utility.Wait(0.5)
		a.UnequipItemSlot(30)
		a.EquipItem(Headless)
		GetOwningQuest().setStage(stage)
	ENDIF
ENDEVENT

miscobject property head auto
ReferenceAlias Property Bounty Auto
Sound Property WPNImpactAxeVsFleshSDLarge Auto
Actor Property PlayerRef Auto
Armor Property Headless Auto
int property stage auto
