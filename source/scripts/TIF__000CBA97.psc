;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__000CBA97 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ReferenceAlias Letter = (GetOwningQuest() as _CTB_DragonQuest).Alias_Letter
Letter.TryToEnable()
BQPGlobalScript.ReadLetter(GetOwningQuest() as BQScript, Letter.GetRef())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
