Scriptname BQPGlobalScript Hidden

Function ReadLetter(BQScript akQuest, ObjectReference akLetter) global
	akLetter.SetActorOwner(Game.GetPlayer().GetActorBase())
	akLetter.Activate(Game.GetPlayer())

	; while loop recommended by Vermunds' Skyrim Souls RE Updated
	while (Utility.IsInMenuMode())
		Utility.Wait(0.1)
	endwhile

	if Game.GetPlayer().GetItemCount(akLetter) == 1
		akQuest.SetStage(10)
	else
		akLetter.Disable()
		akQuest.Hold.GetLocation().SetKeywordData(akQuest.BQActiveQuest, 0)
		akQuest.Stop()
	endif
EndFunction
