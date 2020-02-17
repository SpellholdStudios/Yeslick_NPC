EXTEND_BOTTOM FATESP 6 #4
IF ~!Dead("lk#yeslk") !InMyArea("lk#yeslk") Global("lk#yeslkSummonedToB","GLOBAL",0)~ 
THEN REPLY @0 /* Bring me Yeslick, the dwarven fighter/cleric. */ DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
CreateCreature("lk#yes25",[1909.1228],0) 
SetGlobal("lk#yeslkSummonedToB","GLOBAL",1)
Wait(1)
ActionOverride("lk#yeslk",StartDialogueNoSet(Player1))~ GOTO 8
END
