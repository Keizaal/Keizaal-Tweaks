Scriptname WRThaneWave1Killed extends ReferenceAlias

GlobalVariable Property Wave1Dead  Auto  

Quest Property WRThaneQuest01  Auto  

EVENT onDeath(actor akKiller)
   Wave1Dead.mod(1)
	If Wave1Dead.GetValue() == 10
		WRThaneQuest01.SetStage(35)
	Endif
endEVENT