BEGIN BLK#YE25

// Aerie ToB 

CHAIN IF ~Global("LK#YeslickAerieTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("AERIE") 
See("AERIE") 
!StateCheck("AERIE",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 AerieYeslickTOB_01 
  @0 /* Hoi, Aerie, I can see yer faith an' hope have become even brighter! They be glowin' like a fine jewel now, lassie. */
  DO ~SetGlobal("LK#YeslickAerieTOB","GLOBAL",1)~ 
  == BAerie25 @1 /* Thank you, Yeslick. I... I think it must be because of everything we've seen. Everything we've done. */
  == BLK#YE25 @2 /* Aye, ye've truly learned much, an' let me say: many a priestess an' adventurer will want to follow yer steps, aye they will! */
  == BAerie25 @3 /* Ye -- I mean, you really think so? I hope they will simply do their best. It should be good enough. It was for me. */
  == Baerie25 @4 /* It wouldn't be a lie if I said that I learned something from you, Yeslick. You remind me of Uncle Quayle. A calmer version of him, maybe. */
  == BLK#YE25 @5 /* Har, I wasn't expectin' bein’ compared to tha' ol' fella. Let me just thank ye then, for sayin' I was able to teach ye somethin', Aerie. */
EXIT 

////Anomen ToB 

CHAIN IF ~Global("LK#YeslickAnomenTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 AnomenYeslickTOB_01 
  @6 /* Ye still think 'bout yer father, Anomen? */
  DO ~SetGlobal("LK#YeslickAnomenTOB","GLOBAL",1)~ 
  == BAnome25 IF ~Alignment("Anomen",LAWFUL_GOOD)~ THEN @7 /* Yes. Yes, I do, Yeslick. Why do you ask? */
  == BAnome25 IF ~!Alignment("Anomen",LAWFUL_GOOD)~ THEN @8 /* I don't trust your interest, dwarf. Why do you ask? */
  == BLK#YE25 @9 /* Ye see, family matters interest me. My clan... Orothiar, still matters to me, ye know. Its past matters. I guess yer past is o' value to ye, too. No matter how far ye go. */
  == BAnome25 @10 /* I see. My father did many things... and failed to do a great many more. But no matter my wishes, I cannot erase him from my past. */
  == BAnome25 @11 /* I can only accept who and what he is. No matter how far I go. */
  == BLK#YE25 @12 /* Aye, ye put it well, Anomen. Ye put it well. */
EXIT 

////Cernd ToB 

CHAIN IF ~Global("LK#YeslickCerndTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("CERND") 
See("CERND") 
!StateCheck("CERND",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 CerndYeslickTOB_01 
  @13 /* Hoi, Cernd. I’ve been wonderin' 'bout somethin'. */
  DO ~SetGlobal("LK#YeslickCerndTOB","GLOBAL",1)~ 
  == BCernd25 @14 /* If I can satiate your hunger for knowledge, Yeslick, I will. Tell me, what do wish to know? */
  == BLK#YE25 @15 /* When ye change into that wolf-bein' - do ye also get its instincts? Do ye feel differently? */
  == BCernd25 @16 /* Partially, I must admit, but I do not become a different man. As you do not become a different one when you take off your armor, Yeslick. You may breath more freely then, but you remain Yeslick Orothiar. */
  == BLK#YE25 @17 /* I see. Perhaps it's because we still have one here and--ah, never mind. */
  == BLK#YE25 @18 /* Thank ye for indulging this ol' man's curiosity. Come, let's move on. */
EXIT 

////Edwin ToB 

CHAIN IF ~Global("LK#YeslickEdwinTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("EDWIN") 
See("EDWIN") 
!StateCheck("EDWIN",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 EdwinYeslickTOB02 
  @19 /* Ye may walk day an' night, week after week, offend all 'round ye, bu' ye still managed to save yer neck somehow, Edwin. */
  DO ~SetGlobal("LK#YeslickEdwinTOB","GLOBAL",1)~ 
  == BEdwin25 @20 /* Bah, even the rest of this group, pathetic though it might be, understands how lost they would be without my presence. (Though I find myself missing the days when they were more quiet and knew their place...) */
  == BLK#YE25 @21 /* Pathetic? Is that how ye think 'bout me an' others that got yer back, mage? */
  == BEdwin25 @22 /* I need no one to "watch my back," fool. The only thing I need are pack mules and simpletons who will carry my equipment and let me do my work. */
  == BLK#YE25 @23 /* Ye also need companions, Edwin, trust this ol' dwarf. I say it not to befriend ye, mage, but to warn ye. */
  == BLK#YE25 @24 /* Keep that advice in yer mind, eh? */
EXIT 

////Haer'Dalis ToB 

CHAIN IF ~Global("LK#YeslickHaerdalisTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("HAERDALIS") 
See("HAERDALIS") 
!StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 HaerdaYeslickTOB_01 
  @25 /* Ye see, Haer'Dalis? The gods know how long ye've been insistin' we all make our peace with the grave, bu' we're still breathin'! */
  DO ~SetGlobal("LK#YeslickHaerdalisTOB","GLOBAL",1)~ 
  == BHaerd25 @26 /* Ah, my owl, we are. But I did not say those words for fear that our days might soon end, but to remind us all of how precious every moment is, as we can never know which one will be our last. Fate is nothing if not a most capricious lady. */
  == BLK#YE25 @27 /* Hoi, life is not about tryin' everything, lad, bu' also 'bout livin' with pride an' dignity! Without unnecessary rush. */
  == BHaerd25 @28 /* Ah, friend, consider my will to experience and see things my most important source of pride. Something that gives more notes to the song we sing. */
  == BLK#YE25 @29 /* I see. Ye drive is yer own, Haer'Dalis. Use it th' way ye want an' be proud o' all o' them. */
EXIT 

////Imoen ToB 

CHAIN IF ~Global("LK#YeslickImoenTOB","GLOBAL",0) 
CombatCounter(0) 
AreaCheck("AR4500") // Pocket Plane 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("IMOEN2") 
See("IMOEN2") 
!StateCheck("IMOEN2",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 ImoenYeslickTOB_01 
 @30 /* I see ye lookin' lass. Ye need something? */
  DO ~SetGlobal("LK#YeslickImoenTOB","GLOBAL",1)~ 
  == BIMOEN25 @31 /* I believe I should apologize to you, Yeslick... */
  == BLK#YE25 @32 /* Eh? Ye put somethin' into one o' my bags, girl? */
  == BIMOEN25 @33 /* No. I wasn't really nice to you when you asked me about Irenicus and... you know, I still think you shouldn't stick your nose into stuff--I mean... */
  == BIMOEN25 @34 /* Look, I was harsh. Thanks for your concerns, Yeslick. I don't want us to be mad at each other. Let's just focus on other things. Like surviving the traps the other Children of Bhaal have waiting for us. */
  == BLK#YE25 @35 /* I hold no grudge on ye, lass. Ye were mad an' ye told me that. Har har, ye need to do more to offend this ol' wrinkled fella, Imoen. */
  == BIMOEN25 @36 /* Okay. Well. Thanks, Yeslick. And you're not that wrinkled. Remember Quayle? */
  == BIMOEN25 IF ~Dead("QUAYLE")~ THEN @37 /* HE was wrinkled. He was MADE of wrinkles! And you look just fine. */
  == BIMOEN25 IF ~!Dead("QUAYLE")~ THEN @38 /* HE is wrinkled. He's MADE of wrinkles! And you look just fine. */
EXIT 

////Jaheira ToB

CHAIN IF ~Global("LK#YeslickJaheiraTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("JAHEIRA") 
See("JAHEIRA") 
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 JaheiraYeslickTOB_01 
  @39 /* I bet ye can barely see in <CHARNAME> th' young an' inexperienced cub of yer friend Gorion. Right, Jaheira? */ 
  DO ~SetGlobal("LK#YeslickJaheiraTOB","GLOBAL",1)~ 
  == BJahei25 @40 /* <CHARNAME> has indeed made great progress. It would be difficult to view <PRO_HIMHER> in the same way I did at the Friendly Arm Inn. */
  == BLK#YE25 @41 /* That's true enough, aye. But there be more to it, eh? */
  == BJahei25 @42 /* A huge burden was placed upon <PRO_HISHER> shoulders... unjustly, perhaps. That is why <PRO_HESHE> has had to learn quickly. */
  == BLK#YE25 @43 /* Aye, bu' at least <PRO_HESHE> did not end alone in all o' this. */
  == BJahei25 @44 /* Indeed, <PRO_HESHE> didn't. */
EXIT 

////Jan ToB 

CHAIN IF ~Global("LK#YeslickJanTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("JAN",CD_STATE_NOTVALID) 
InParty("LK#YESLK") 
See("LK#YESLK") 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID)~ 
THEN BJAN25 JanYeslickTOB_01 
  @45 /* I think you will be happy to hear, Yeslick, that I've decided to put Jansen De-Aging Youthifier on a hold for a while. */
  DO ~SetGlobal("LK#YeslickJanTOB","GLOBAL",1)~ 
  == BLK#YE25 @46 /* Heppy? Nay, even though I was never th' target fer yer invention, Jan, I wouldn't tell ye to throw it into a limbo. */
  == BJAN25 @47 /* Well, you didn't want to test it. But the problem here is that I feel it lacked a certain... zing. A little something special. Something that would make people think, "This is just the product I want to use to get rid of all my wrinkles." So I put it aside. For a while. Maybe I'll get back to it, though. Once I can finally feel that zing again. */
  == BLK#YE25 @48 /* I see. Well, I hope ye'll find tha' zing soon enough, Jan. */
EXIT 

////Keldorn ToB 

CHAIN IF ~Global("LK#YeslickKeldornTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("KELDORN") 
See("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 KeldornYeslickTOB_01 
  @49 /* Yer Order of the Most Radiant Heart doesn't mind ye left them fer such a long time, ol' friend? */
  DO ~SetGlobal("LK#YeslickKeldornTOB","GLOBAL",1)~ 
  == BKeldo25 @50 /* I trust that they understand that <CHARNAME>'s task is essential to bringing peace to these lands. The work did not finish with the fall of Bodhi and Irenicus. */
  == BLK#YE25 @51 /* Aye, th' matter - as we can see - does not respect any borders. I would say that's also a proof o' how important all of this is. */
  == BKeldo25 @52 /* Regardless of what some may think of the Order, they are aware of this matter's importance. They understand that there is a world beyond Amn. */
  == BLK#YE25 @53 /* Good, good. I admit this mission would be much harder without ye on board, Keldorn. */
EXIT 

////Korgan ToB 

CHAIN IF ~Global("LK#YeslickKorganTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("KORGAN",CD_STATE_NOTVALID) 
InParty("KORGAN") 
See("KORGAN") 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 KorganYeslickTOB_01 
  @54 /* I'm startin' to believe tha' yer smell grows with yer experience, Korgan. */
  DO ~SetGlobal("LK#YeslickKorganTOB","GLOBAL",1)~ 
  == BKorga25 @55 /* Har har, ye may be right, Orothiar! I can say that me and my axe are sticky with experiece! */
  == BLK#YE25 @56 /* Why ye act as if what I said was some compliment, berserker? */
  == BKorga25 @57 /* Oh, but it was! Har har! */
  == BLK#YE25 @58 /* I must disagree with ye. Greatly disagree. */
EXIT 

////Mazzy ToB 

CHAIN IF ~Global("LK#YeslickMazzyTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("MAZZY") 
See("MAZZY") 
!StateCheck("MAZZY",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 MazzyYeslickTOB_01 
  @59 /* Do ye miss Trademeet and yer kin, Mazzy? Ye must wonder how they be feelin', right? */
  DO ~SetGlobal("LK#YeslickMazzyTOB","GLOBAL",1)~ 
  == BMazzy25 @60 /* I indeed think about them often. I cannot say that I don't miss them, Yeslick, but there are matters I can't be distracted from. */
  == BLK#YE25 @61 /* Ah, an' <CHARNAME> is such a matter, aye? */
  == BMazzy25 @62 /* Not just <PRO_HIMHER>, friend, but also you. This company. */
  == BMazzy25 @63 /* This isn't a matter of one person or one fight, but something greater. Something I cannot ignore or abandon. */
  == BLK#YE25 @64 /* Har har, ye have a strong heart, Mazzy. And even stronger spirit. I wonder how such a small body can hold all o' it! */
  == BMazzy25 @65 /* As we can see, somehow it can. But come, Yeslick. Let's get back to the formation. There is work to do. */
EXIT 

////Minsc ToB 

CHAIN IF ~Global("LK#YeslickMinscTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("MINSC") 
See("MINSC") 
!StateCheck("MINSC",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 MinscYeslickTOB_01 
  @66 /* Hoi, Minsc, my friend! Is it true what people say? Tha' in Rashemen a simple stone can be hidin' spirits? */
  DO ~SetGlobal("LK#YeslickMinscTOB","GLOBAL",1)~ 
  == BMinsc25 @67 /* Oh, of course! Rashemen is full of spirits! Small ones. Big ones. Some would surely fit into a stone or a rock! */
  == BLK#YE25 @68 /* Hmm, and ye learn how to talk to them? How to sense those... spirits? */
  == BMinsc25 @69 /* There are shamans! And Witches. They are smart and they know how to do many things. How to speak to them or ask them questions. But they also respect their will. If they don't want to talk, people will try not to disturb them! */
  == BLK#YE25 @70 /* Yer home must be quite an unique piece of land then! */
  == BMinsc25 @71 /* Oh, it is! Right, Boo? *squeak* */
EXIT 

////Nalia ToB 

CHAIN IF ~Global("LK#YeslickNaliaTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("NALIA") 
See("NALIA") 
!StateCheck("NALIA",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 NaliaYeslickTOB_01 
  @72 /* Nalia? Are ye fine, lass? Ye look differently. */
  DO ~SetGlobal("LK#YeslickNaliaTOB","GLOBAL",1)~ 
  == BNalia25 @73 /* It's -- it's fine. I've been thinking lately. */
  == BLK#YE25 @74 /* What's on yer mind? I can see somethin's troublin' ye. */
  == BNalia25 @75 /* I've been thinking about everything that we've done. About Irenicus. About Bodhi. About Suldanessellar. I know that we've made a difference, but... there's always more injustice. More evil. Will our efforts ever be enough? */
  == BLK#YE25 @76 /* That's a tough one, lass. I'm afraid ye'll never find a perfect world. Ol' as I am, I've always seen somethin' worth a fight. Somethin' to change. */
  == BNalia25 @77 /* Yet there aren't many who do their best to change it... */
  == BLK#YE25 @78 /* Oh, there are many o' us, Nalia. Ye may be wantin' fer some clear message, but they never come. Aye, there are no town criers screamin' "everything's alright now", are there? */
  == BLK#YE25 @79 /* That's why we have t' know that what we do matters, girl. That's how it is. */
EXIT 

////Valygar ToB 

CHAIN IF ~Global("LK#YeslickValygarTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID) 
InParty("VALYGAR") 
See("VALYGAR") 
!StateCheck("VALYGAR",CD_STATE_NOTVALID)~ 
THEN BLK#YE25 ValygarYeslickTOB_01 
  @80 /* With ye so long away, ye'll need to fight some rodents from yer home. */
  DO ~SetGlobal("LK#YeslickValygarTOB","GLOBAL",1)~ 
  == BValyg25 @81 /* You mean my cabin? I don't think they will cause any trouble. Nor do I mind their presence. It's a forest, after all. */
  == BLK#YE25 @82 /* Th' problem starts, when they damage yer home when ye're away. Then when yer back, ye may not notice th' problem at first, bu' then ye realize yer home's true condition. */
  == BValyg25 @83 /* I have a feeling that we're no longer speaking about my cabin. */
  == BLK#YE25 @84 /* Perhaps we're not. */
EXIT 

////Viconia ToB 

CHAIN IF ~Global("LK#YeslickViconiaTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("VICONIA",CD_STATE_NOTVALID) 
InParty("LK#YESLK") 
See("LK#YESLK") 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID)~ 
THEN BVicon25 ViconiaYeslickTOB_01 
  @85 /* Hargluk, when are you going to leave this work to someone younger and more competent? I can almost hear your old bones crack. */
  DO ~SetGlobal("LK#YeslickViconiaTOB","GLOBAL",1)~ 
  == BLK#YE25 @86 /* Perhaps yer head got hit too many times, Viconia. Do ye want me to check it? */
  == BVicon25 @87 /* Bark freely while you still can, iblith. The day will come when you beg me for help. And you won't receive it. */
  == BVicon25 @88 /* You have known me long enough to know that this is true. Now begone. You will not hear another word from me, worm. */
EXIT

////Sarevok ToB 

CHAIN IF ~Global("LK#YeslickSarevokTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("SAREVOK",CD_STATE_NOTVALID) 
See("LK#YESLK") 
InParty("LK#YESLK") 
!StateCheck("LK#YESLK",CD_STATE_NOTVALID)~ 
THEN BSarev25 Sarevok2Skie1 
  @89 /* You were lucky not to drown in the Iron Throne mines, dwarf. */
  DO ~SetGlobal("LK#YeslickSarevokTOB","GLOBAL",1)~ 
  == BLK#YE25 @90 /* Those mines belonged to Orothiar clan, Sarevok. Ye and yer people should have never found out 'bout them. */
  == BSarev25 @91 /* Yet you were gullible enough to trust Rieltar and tell him about that place. */
  == BSarev25 @92 /* I pity you, but not because of your clan or the mines that are now lost forever. I pity you the foolish mistakes you made and those you are still going to make, dwarf. */
  == BLK#YE25 @93 /* Say whatever ye want, Sarevok. Show what kind o' man ye are. Yer words speak only of yerself. */
EXIT
