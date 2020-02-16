
BEGIN LK#YES25

//JOINING DIALOGUE

CHAIN IF ~!Global("LK#YeslickJoined","LOCALS",1) NumTimesTalkedTo(0)~ THEN LK#YES25 Join000
@0 /* By Clangeddin, <PRO_GIRLBOY>! Ye've got a talent fer makin' an ol' dwarf's head spin! What sort o' sorcery did ye channel to bring me to such a bleak place? */
END
IF~~THEN REPLY @1 /* By the power of fate, I have called you here. Will you aid me, Yeslick? */ EXTERN LK#YES25 Join001
IF~~THEN REPLY @2 /* Yeslick, old chap! Worry not, I have brought you to my domain. I need your help once more. */ EXTERN LK#YES25 Join001
IF~~THEN REPLY @3 /* I don't think I need your company after all, Yeslick. Wait for me in this place, if you don't mind. */  EXIT

CHAIN LK#YES25 Join001
@4 /* 'Tis my helpin' hand ye wish, eh? Aye, and that ye shall have, if ye require it... but pray, tell me of what is to come, <CHARNAME>. What would ye ask of this aged dwarf? */
END
IF~~THEN REPLY @5 /* I'm afraid my destiny is close at hand. I would like to have your strength when I face it. */ EXTERN LK#YES25 Join002
IF~~THEN REPLY @6 /* Nothing too dangerous, I hope. I just need to be prepared for whatever is to come. */ EXTERN LK#YES25 Join003

CHAIN LK#YES25 Join002
@7 /* Aye, 'tis wise to keep yer allies close when pursued by fate. */
EXTERN LK#YES25 Join004

CHAIN LK#YES25 Join003
@8 /* One can ne'er be too prepared, as wise men have said. */
EXTERN LK#YES25 Join004

CHAIN LK#YES25 Join004
@9 /* Ye knows ye can count on me hammer, <CHARNAME>. Whatever strength is left in my ol' bones, I shall offer to ye. These legs may grow frail, but they've strength enough to break the rocks in our paths. Let us go, me <PRO_GIRLBOY>. */
DO ~SetGlobal("LK#YeslickJoined","LOCALS",1) JoinParty()~ EXIT

//BACK

CHAIN IF ~!Global("LK#YeslickJoined","LOCALS",1) NumTimesTalkedToGT(0)~ THEN LK#YES25 Join00B
@10 /* Ye return, me <PRO_GIRLBOY>. How might this ol' dwarf assist ye? */
END
IF~~THEN REPLY @11 /* I would have your company, Yeslick. */ EXTERN LK#YES25 Join004
IF~~THEN REPLY @12 /* You can do nothing for me at the moment. */ EXIT



BEGIN LK#YE25P

CHAIN IF ~Global("LK#YeslickJoined","LOCALS",1)~ THEN LK#YE25P Leave000
@13 /* Hoi! Ye don't need my help anymore? */
END
IF~~THEN REPLY @14 /* Not at the moment. Stay here until I need you again. */ DO ~SetGlobal("LK#YeslickJoined","LOCALS",0)~ EXIT
IF~~THEN REPLY @15 /* Actually, I still need your skills, Yeslick. Remain with me. */ DO ~JoinParty()~ EXIT

CHAIN IF ~~ THEN LK#YE25P Rejoin000
@16 /* Hoi! It's ye, <PRO_GIRLBOY>. Have ye returned to pick up this ol' bag of bones, eh? */
END
IF~~THEN REPLY @17 /* Yes. Welcome back, Yeslick. */ DO ~SetGlobal("LK#YeslickJoined","LOCALS",1) JoinParty()~ EXIT
IF~~THEN REPLY @18 /* Not right now. */ EXIT
