;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 24
Scriptname QF_0WRGiantQuest_052ECDA4 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Gertie
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gertie Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ImperialSteward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ImperialSteward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Letter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Letter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY HostileGiantAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_HostileGiantAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StormcloakSteward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StormcloakSteward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Urik
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Urik Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bucket
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bucket Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PaintedGertie
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PaintedGertie Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DiploGiant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DiploGiant Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
bucket.enable()
SetObjectiveCompleted(16)
SetObjectiveCompleted(17)
SetObjectiveDisplayed(18)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
Game.GetPlayer().AddItem(Gold001, 800)
bucket.disable()
bucket.delete()
SetObjectiveCompleted(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
SetObjectiveFailed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
bucket.disable()
bucket.delete()
SetObjectiveCompleted(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveCompleted(30)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveCompleted(30)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
BloodSplatter.ApplyCrossFade()
Moo.Play(Game.GetPlayer())
unpainted.disable()
utility.wait(1)
BloodSplatter2.ApplyCrossFade()
Painted.enable()
utility.wait(1)
SetObjectiveCompleted(19)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(15)
Game.GetPlayer().RemoveItem(Gold001, 300)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(14)
SetObjectiveDisplayed(15)
SetObjectiveDisplayed(16)
SetObjectiveDisplayed(17)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
Game.GetPlayer().AddItem(DyeBlue, 1)
Game.GetPlayer().RemoveItem(Gold001, 50)
unpainted.enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveDisplayed(10)
SetObjectiveDisplayed(11)
GiantHostile.enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Game.GetPlayer().AddItem(StartNote, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(100)
Game.GetPlayer().AddItem(Gold001, 350)
bucket.disable()
bucket.delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Game.GetPlayer().AddItem(UriksNote, 1)
SetObjectiveCompleted(11)
SetObjectiveDisplayed(14)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(18)
SetObjectiveDisplayed(19)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
GiantDiplomatic.enable()
GiantHostile.disable()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Book Property StartNote  Auto  

Book Property UriksNote  Auto  

MiscObject Property DyeBlue  Auto  

MiscObject Property Gold001  Auto  

Actor Property Unpainted  Auto  

ObjectReference Property Bucket  Auto  

Actor Property Painted  Auto  

ImageSpaceModifier Property BloodSplatter  Auto  

Sound Property Moo  Auto  

Actor Property GiantDiplomatic  Auto  

Actor Property GiantHostile  Auto  

ImageSpaceModifier Property BloodSplatter2  Auto  
