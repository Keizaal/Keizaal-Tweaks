Scriptname WRThaneWave2Killed extends ReferenceAlias  

GlobalVariable Property Wave2Dead  Auto  

Quest Property WRThaneQuest01  Auto  

EVENT onDeath(actor akKiller)
   Wave2Dead.mod(1)
	If Wave2Dead.GetValue() == 13
		WRThaneQuest01.SetStage(50)
	Endif
endEVENT