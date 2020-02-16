BEGIN LK#YESP

// LEAVING DIALOGUE
IF ~Global("LK#YeslickJoined","LOCALS",1)~ Yleave
  SAY @0 /* Ye say ye donnae need me anymore? Are ye sure, <PRO_LADLASS>? As far as I can tell, ye need all the help ye can get... */
++ @1 /* I changed my mind, Yeslick. I do not want you to leave just yet. */ + Yleavea
++ @2 /* I hate to part ways, friend, but I believe this is for the best. */ + Yleaveb
++ @3 /* Yes, dwarf, you heard right. Believe me, I think I can manage just fine without your incessant nagging and constant demands for rests. */ + Yleavec
END

IF ~~ Yleavea
  SAY @4 /* Music ta me ears! We still have a wizard ta slay, after all! Carry on! */
  IF ~~ EXIT
END

IF ~~ Yleaveb
  SAY @5 /* No need ta fret, <CHARNAME>; I understand completely. If ye need me, I'll be knockin' a few ales back at the Five Flagons. Stay safe, me friend. */
  IF ~~ DO ~SetGlobal("LK#YeslickJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR0509",408,491,6)~ EXIT
END

IF ~~ Yleavec
  SAY @6 /* Iffin' thats the way ye feel about it, ye heartless cur, then I'll make me leave. Donnae expect fer me ta lend ye any aid after this, though. This is the last ye've seen of Yeslick Orothiar! */
  IF ~~ DO ~SetGlobal("LK#YeslickJoined","LOCALS",0) LeaveParty() EscapeArea()~ EXIT
END


// REJOINING DIALOGUE
IF ~Global("LK#YeslickJoined","LOCALS",0)~ Yrejoin
  SAY @7 /* Come back, have ye,<PRO_LADLASS>? Does that mean ye require me services again? I'd love ta leave this sorry excuse fer a bar and return back ta the life o' adventurin'. Much better company that way. */
  ++ @8 /* I would love for you to accompany us again, Yeslick. It has been much too quiet since we parted ways! */ + Yrejoina
  ++ @9 /* If you think you can keep up, old man, then I guess you can tag along. Just try not to fall behind and you might be useful. */ + Yrejoinb
  ++ @10 /* Just passing through and thought I would say hello. How have you been? */ + Yrejoinc
  ++ @11 /* I am sorry, but I do not have any need for your services. Perhaps some other time. */ + Yrejoind
  ++ @12 /* By the gods, no. Continue to drown yourself in your ale, dwarf, because that is all you are good for. */ + Yrejoine
END

IF ~~ Yrejoina
  SAY @13 /* Music ta me ears, <CHARNAME>! Believe it or not, sittin' here and swillin' ale day in and day out was beginnin' ta grow old. */
  IF ~~ DO ~JoinParty() SetGlobal("LK#YeslickJoined","LOCALS",1)~ EXIT
END

IF ~~ Yrejoinb
  SAY @14 /* Ha! I'd like ta see ye last a day in me old mines, <PRO_LADLASS>. I'm more fit than ye seem ta think! Now, let us get goin'! I spent enough time in this noisy bar! */
  IF ~~ DO ~JoinParty() SetGlobal("LK#YeslickJoined","LOCALS",1)~ EXIT
END

IF ~~ Yrejoinc
  SAY @15 /* Oh, I've been doin' just fine, <PRO_LADLASS>. This bar is one o' the few places in this damn city that donnae disgust me, and the ale ain't that bad either. Are ye sure ye donnae need me ta travel with ye, though? I'm sure whatever yer doin' is more excitin' than wastin' away me time in this place. */
  ++ @16 /* I suppose you can come along, Yeslick. It would be nice to catch up on old times. */ + Yrejoina
  ++ @17 /* You can come along, Yeslick, but only if you promise not to slow us down. */ + Yrejoinb
  ++ @18 /* Sorry, my friend, but I simply do not have any need for your services right now. */ + Yrejoind
  ++ @19 /* Stick to the ale, old man. You do us no good on the battlefield. */ + Yrejoine
END

IF ~~Yrejoind
  SAY @20 /* If ye insist, <CHARNAME>. But remember, iffin' ye ever need the strong arm of a sturdy, loyal dwarf, I'm yer man! I'll always have yer back, me friend. */
  IF ~~ EXIT
END

IF ~~ Yrejoine
  SAY @21 /* Harsh choice of words, ye dastard. I think I will stick to me ale, then, if that's how ye feel about it. Me ale never spoke ta me like that, anyway.  */
  = @22 /* If ye come to yer senses, ye know where ta find me. */
END