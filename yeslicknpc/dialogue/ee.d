// DORN 

CHAIN IF ~InParty("DORN") 
See("DORN") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("LK#YeslickDorn","GLOBAL",0)~ THEN BLK#YES LK#YeslickDorn1 
@0 /* Yer presence in this group, Dorn, is beyond my understandin'. Ye're no different to Sarevok an' his fellas. */ 
DO ~SetGlobal("LK#YeslickDorn","GLOBAL",1)~ 
== BDORN @1 /* Most matters are beyond your understanding, dwarf. Leave it to those who can actually get things done. */
== BLK#YES @2 /* Done? All ye can do is make things more complicated. Ye care only 'bout yer ambitions an' plans. */
== BDORN @3 /* Hah! And that is why I succeed where you fail, dwarf. Now get out of my way. */
EXIT 


// Dorn ToB

CHAIN IF ~Global("LK#YeslickDornTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
InParty("DORN") 
See("DORN") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 LK#YeslickDorn25 
  @4 /* I wouldn't be much surprised, Dorn, if we had to deal with ye one day. Just as we had to deal with Irenicus and his sister. */
  DO ~SetGlobal("LK#YeslickDornTOB","GLOBAL",1)~ 
  == BDORN25 @5 /* You? Deal with me? Hah, continue dreaming, Yeslick. */
  == BDORN25 @6 /* You feed yourself with delusions, dwarf, thinking that this world follows rules you made up yourself. Deal with how this world runs and maybe you will understand how foolish your words and beliefs are. */
  == BLK#YE25 @7 /* Ye are th' fool here, Dorn. Yer own beliefs will bring doom upon ye. Sooner o' later. Sooner probably. */
EXIT 

////NEERA 

CHAIN IF ~InParty("NEERA") 
See("NEERA") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
!StateCheck("NEERA",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("LK#YeslickNEERA","GLOBAL",0)~ THEN BLK#YES LK#YeslickNeera1 
@8 /* Hoi! What fer Muradin's might is that, Neera? */
DO ~SetGlobal("LK#YeslickNEERA","GLOBAL",1)~ 
== BNEERA @9 /* Uhm, it was supposed to be a beard comb, but... */
== BLK#YES @10 /* But? */
== BNEERA @11 /* You see, I wanted to make it better than any other comb as you have HUGE beard. So I thoght "Hey, there is this spell - Kollanna's Beard Ward - and that's a kind of ward Yeslick could use!" */
== BNEERA @12 /* The problem is... */
== BLK#YES @13 /* Aye...? */
== BNEERA @14 /* ...that there was a surge. */
== BLK#YES @15 /* Is that why this comb is teethin'? */
== BNEERA @16 /* I suppose. Or maybe it's coming of age. */
== BLK#YES @17 /* Yer powers can sometimes give me shivers, lass. */
EXIT 

////Neera ToB 


CHAIN IF ~Global("LK#YeslickNeeraTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
InParty("NEERA") 
See("NEERA") 
!StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 LK#YeslickNeera25 
  @18 /* Ye're lookin' good today, Neera. I guess ye slept well, eh? */
  DO ~SetGlobal("LK#YeslickNeeraTOB","GLOBAL",1)~ 
  == BNEERA25 @19 /* Yep! No nightmares about Red Wizards. */
  == BNEERA25 IF ~InParty("EDWIN")~ THEN @20 /* Excluding Edwin, of course, but he's not a dream. Unfortunately. */
  == BLK#YE25 @21 /* I'm glad to see ye in such a mood, lass. Ye deserve some joy in all o' tha' situation of yers. */
  == BNEERA25 @22 /* Hey, thanks! It's sooo good to hear kind words from you, Yeslick. I'm in such a good mood that maybe I should try to work on some new comb for you. A good one. Not like the one I tried to enchant for you long time ago. */
  == BLK#YE25 @23 /* What? Nay, I'm fine with my ol' comb. Really. And I would rather keep it as it is. Ye don't need to make it teeth like ye did with the last one. */
  == BNEERA25 @24 /* Don't make me think you don't like my gifts, Yeslick! */
  == BLK#YE25 @25 /* They are quite unique, lass. They truly are! */
  EXIT 

////RASAAD 

CHAIN IF ~InParty("RASAAD") 
See("RASAAD") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
!StateCheck("RASAAD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("LK#YeslickRASAAD","GLOBAL",0)~ THEN BLK#YES LK#YeslickRasaad1 
@26 /* Yer fists can smash like real hammers, Rasaad! It's quite a show when ye use them against our foes! */
DO ~SetGlobal("LK#YeslickRASAAD","GLOBAL",1)~ 
== BRASAAD @27 /* Thank you, Yeslick. They are but a symbol of unity of mind and flesh - just as one of your mind and faith, my friend. */
== BLK#YES @28 /* Har har, my faith may be in a good shape, but I can't use it to the way ye use those hands. They are impressive. */
== BRASAAD @29 /* Just as your faith, Yeslick. Believe me, there are many things you can do with it. Things my hands will never do. */
EXIT 

////Rasaad ToB 

CHAIN IF ~Global("LK#YeslickRasaadTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
InParty("RASAAD") 
See("RASAAD") 
!StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 LK#YeslickRasaad25 
  @30 /* Sometimes I can barely see yer fists when ye do yer punchin', Rasaad. They are gettin' fast as thunder! */
  DO ~SetGlobal("LK#YeslickRasaadTOB","GLOBAL",1)~ 
  == BRASAA25 @31 /* It's a matter of the experience and training, Yeslick. Also, believe me or not, my friend, but you made me understand how to properly use them against some of our foes. */
  == BLK#YE25 @32 /* Is that so? */
  == BRASAA25 @33 /* Yes. I observed you in battle, Yeslick. How you use your hammer. I saw how you aim certain points when fighing enemies greater than you. */
  == BLK#YE25 @34 /* Har har! I'm happy to hear that this ol' dwarf could teach ye something, Rasaad. Use that knowledge well. */
  == BRASAA25 @35 /* I will. Thank you, Yeslick. */
EXIT 

//HEXXAT 

CHAIN IF ~InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
!StateCheck("HEXXAT",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("LK#YeslickHEXXAT","GLOBAL",0)~ THEN BLK#YES L#2Skieexxat1 
@36 /* Hmph, when I was joinin' <CHARNAME> I didn't know I will be workin' with someone like ye. With someone dead. */
DO ~SetGlobal("LK#YeslickHEXXAT","GLOBAL",1)~ 
== BHEXXAT @37 /* Is that the line you draw about who can be trusted, dwarf? Death? */
== BLK#YES @38 /* Ye don't seem to be an example o' most honest thin' too, Hexxat. I have more reasons to distrust ye. */
== BHEXXAT @39 /* Then don't. We do not need to trust each other to benefit from skills each of one has. */
== BLK#YES @40 /* I would prefer to trust someone I'm workin' with. */
== BHEXXAT @41 /* Then work on it. */
EXIT 

////Hexxat ToB 

CHAIN IF ~Global("LK#YeslickHexxatTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 LK#YeslickHexxat25 
  @42 /* Hoi! Hexxat. Ye have a moment? */
  DO ~SetGlobal("LK#YeslickHexxatTOB","GLOBAL",1)~ 
  == BHEXXA25 @43 /* Yes. I do. */
  == BLK#YE25 @44 /* Ye had more than one chance to kill me. Ye didn't ever tried, though. */
  == BHEXXA25 @45 /* What would I gain by killing you? */
  == BLK#YE25 @46 /* Ye would get rid of someone that distrusted ye. */
  == BHEXXA25 @47 /* That was never my goal. I would need to kill most men and women. */
  == BLK#YE25 @48 /* Doesn't tha' trouble ye? That almost no one can ever trust ye? */
  == BHEXXA25 @49 /* No. */
  == BLK#YE25 @50 /* I must tell ye that's sad. I pity ye, lass. */
  == BHEXXA25 @51 /* You shouldn't. */
EXIT 

//WILSON 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("LK#YeslickWILSON","GLOBAL",0)~ THEN BLK#YES LK#YeslickWILSON1 
@52 /* We're quite alike, Wilson, I must say! */
DO ~SetGlobal("LK#YeslickWILSON","GLOBAL",1)~ 
== BWILSON @53 /* Rff. Snort. */
== BLK#YES @54 /* Har har, I don't mean just fur! Ye're true at heart. Honest to th' bone, too. */
== BWILSON @55 /* Sniff, growl. Roar. */
== BLK#YES @56 /* Really? I am honored to hear that I remind yer kin. Aye, we may not share same blood, Wilson, bu' I know there are parts of ye and me that correspond. */
== BWILSON @57 /* Roar. */
== BLK#YES @58 /* Right ye are, friend. Perhaps there is a reason why we're both here, in this group. */
EXIT 

//WILSON ToB 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("lk#yeslk",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("LK#YeslickWILSONTOB","GLOBAL",0)~ THEN BLK#YE25 LK#YeslickWILSON25 
@59 /* Ye are a true bear paragon, Wilson. I admired yer heart and honor, bu' now - I believe ye became someone more with time. Ye're an icon, of sorts. */
DO ~SetGlobal("LK#YeslickWILSONTOB","GLOBAL",1)~ 
== BWILSO25 @60 /* Roar. Rff? */
== BLK#YE25 @61 /* An icon o' who someone like ye may become. Aye, I pray more will follow yer steps, Wilson. */
== BWILSO25 @62 /* Snuffle-snort. Rrr. */
== BLK#YE25 @63 /* One is sure, Wilson. I will myself tell others 'bout ye - 'bout true warrior an' a good friend. */
EXIT 