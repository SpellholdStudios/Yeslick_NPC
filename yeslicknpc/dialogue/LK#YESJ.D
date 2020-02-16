// ---------------------------------------------
// Yeslick  Dialogue
// ---------------------------------------------
BEGIN ~LK#YESJ~


APPEND ~LK#YESJ~

// Friendship #1: <CHARNAME>'s state of ill repair
IF ~Global("LK#YeslickFriendTalks","GLOBAL",1)~ Yftalk1
  SAY @0 /* How is it ye ever managed ta get on without me, <CHARNAME>? Yer bruised 'n cut all over, fer Clangeddin's sake! It's as though ye go outta yer way t' get hurt! */
  + ~OR(5) InParty("Jaheira") InParty("Anomen") InParty("Aerie") InParty("Viconia") InParty("Cernd")~ + @1 /* I do have another healer with me, you know. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yfta
  + ~OR(3) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) Class(Player1,PALADIN_ALL)~ + @2 /* I am something of a healer myself, you know. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yftab
  ++ @3 /* I think it's the other way around; things tend to go out of their way to hurt *me*. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",2) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yftb
  ++ @4 /* I really don't know, Yeslick, but I'm glad to have you around again. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yftc
  ++ @5 /* I am more than capable of looking after myself, and I don't need your inane chatter, dwarf. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yftd
END

IF ~~ Yfta
  SAY @6 /* Well, they donnae seem t' be doin' a bang-up job of it, do they? Look at ye! */
  IF ~~ + Yfte
END

IF ~~ Yftab
  SAY @7 /* Well, ye donnae seem to be doin' a bang-up job of it, do ye? Look at yeself! */
  IF ~~ + Yfte
END

IF ~~ Yftb
  SAY @8 /* Ye may have a point, at that. */
  IF ~~ + Yfte
END

IF ~~ Yftc
  SAY @9 /* An' it be my pleasure t' serve ye, <CHARNAME>. Nothin' quite like bein' a force fer good! */
  IF ~~ + Yfte
END

IF ~~ Yftd
  SAY @10 /* Aye, ye may be right there. If ye need me, ye know where ta find me. */
  IF ~~ EXIT
END

IF ~~ Yfte
  SAY @11 /* Next time we get in a scrape, ye come t' me, ye ken? I cannae abide sloppy worksmanship. We'll get ye fixed up right good. */
  ++ @12 /* If you say so, Yeslick. */ + Yftf
  ++ @13 /* Alright, alright! Next time, I will come to you. */ + Yftf
  + ~InParty("Jaheira")~ + @14 /* Jaheira's "sloppy worksmanship" is good enough for me, thank you. */ + Yftg
  + ~InParty("Aerie")~ + @15 /* Aerie's "sloppy worksmanship" is good enough for me, thank you. */ + Yftg
  + ~InParty("Anomen")~ + @16 /* Anomen's "sloppy worksmanship" is good enough for me, thank you. */ + Yftg
  + ~InParty("Viconia")~ + @17 /* Viconia's "sloppy worksmanship" is good enough for me, thank you. */ + Yftg
  + ~InParty("Keldorn")~ + @18 /* Keldorn's "sloppy worksmanship" is good enough for me, thank you. */ + Yftg
  + ~OR(3) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) Class(Player1,PALADIN_ALL)~ + @19 /* My "sloppy worksmanship" is good enough for me, thank you. */ + Yftg
  ++ @20 /* I'll get whomever I damn well please to heal me, Yeslick. You don't give the orders around here. */ + Yftg
END

IF ~~ Yftf
  SAY @21 /* Good <PRO_GIRLBOY>. */
  IF ~~ EXIT
END

IF ~~ Yftg
  SAY @22 /* Well, donnae be comin' ta me when yer stitches break or yer bruises refuse ta fade! Ye can deal with what yer own self, if yer gonna be a mule about it. */
  IF ~~ EXIT
END


// Friendship #2: Thunder Hammer Smithy
IF ~Global("LK#YeslickFriendTalks","GLOBAL",3)~ Yftalk2
  SAY @23 /* Ye know, as enjoyable as travelin' with ye again is, I cannae help but wonder how ol' Taerom and the fellas at Thunder Hammer Smithy are holdin' up without me. */
  ++ @24 /* Did you enjoy your time at the smithy, Yeslick? */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",4) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft2a
  ++ @25 /* I honestly don't understand how you could enjoy working for that abhorrent brute. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",4) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft2b
  ++ @26 /* Then why not just go back to Beregost, dwarf? You're doing no one any good here. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",4) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft2c
END

IF ~~ Yft2a
  SAY @27 /* Oh, aye, it was plenty enjoyable. Growin' up in the mines, we forged all o' our own mining tools and weapons and such. Workin' at a smithy came naturally ta me. */
  IF ~~ + Yft2e
END

IF ~~ Yft2d
  SAY @28 /* Aye, <PRO_GIRLBOY>, and I'll be by yer side ta help ye achieve yer goal fer as long as ye need me. */
  IF ~~ EXIT
END

IF ~~ Yft2f
  SAY @29 /* Aye, <PRO_GIRLBOY>, and it would be a rest well deserved. Once we get back poor Imoen and give this Irenicus bastard what he deserves, there will be plenty time fer ye ta rest. */
  = @30 /* <CHARNAME>, yer one o' the strongest people I've met in me whole, long life, and that's sayin' somethin'! Ye should be proud o' yer accomplishments, no matter how difficult they've been ta achieve. */
  = @31 /* And fer what it's worth, ye got me by yer side all the way ta help ye achieve 'em. */
  IF ~~ EXIT
END

IF ~~ Yft2b
  SAY @32 /* He was a gruff ol' codger, but then again, so am I. Hoi, maybe that's why we got along so well! He took some getting use ta, I'll give ye that, but he's not as bad as he lets on. */
  IF ~~ + Yft2e
END

IF ~~ Yft2e
  SAY @33 /* After awhile, though, it just didn't settle with me. I felt as though I could be doin' more with me time, ye know? After wastin' all that time trapped within me mines, I feel as though I shouldn't be wastin' no more o' my time. */
  ++ @34 /* Worry not, Yeslick; I have no plans to waste any time. We have our goal set, and now we must do all we can to achieve it. */ + Yft2d
  ++ @35 /* I find it funny that you should say that, as I find myself thinking the exact opposite. After all that has happened, I would love to simply be able to rest without thinking three steps ahead. */ + Yft2f
  ++ @36 /* Then why don't we simply part ways now? You are obviously wasting your time here; you are not wanted. */ + Yft2c
END

IF ~~ Yft2c
  SAY @37 /* <CHARNAME>! What's wrong with ye, <PRO_GIRLBOY>?! I don't remember ye ever speakin' ta me like that before. Is it Imoen? Is it what that Irenicus fella done ta ye? Losin' Khalid and Dynaheir? */
  = @38 /* I understand yer under a lot o' stress, <CHARNAME>, but I donnae take kindly ta be spokin' to that way. I'll leave ye fer now, but just think o' the people around ye before lashin' out like that. */
  IF ~~ EXIT
END


// Friendship #3: Irenicus
IF ~Global("LK#YeslickFriendTalks","GLOBAL",5)~ Yftalk3
  SAY @39 /* I never thought I'd be sayin' this, <CHARNAME>, but I think ye managed ta find a foe even more dangerous than Sarevok in this Irenicus fella. Crazy folk seem ta enjoy causin' ye strife, don't they? */
  ++ @40 /* Unfortunately, that seems to be the case. Evil seems determined to make my life hell. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",6) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft3a
  ++ @41 /* Sarevok was a far greater threat than this madman. What I had against Sarevok was personal; Irenicus is just a random lunatic who just happened to steal away Imoen. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",6) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft3b
  ++ @42 /* He is no more a threat than any other foe I have defeated. He will get what he deserves in due time. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",6) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft3a
  ++ @43 /* Apparently so. Proof of this is quite evident given your determination to pester me with these inane conversations. Begone, dwarf! */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",6) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft3c
END

IF ~~ Yft3a
  SAY @44 /* Be that as it may, ye've got a good head on yer shoulders and friends who'll ne'er leave yer side, <CHARNAME>. Ye cannae give up hope now. */
  IF ~~ + Yft3e
END

IF ~~ Yft3e
  SAY @45 /* Yer fight against Sarevok was different, though. We had the whole bloody city o' Baldur's Gate on our side, and when the battle was won we were heroes. Nobody here seems willin' ta help against this mageling. */
  = @46 /* I've been wonderin', though, <CHARNAME>: What happened ta ye after the celebrations? One minute ye was there with the rest o' us and the next ye was gone! */
  ++ @47 /* You should know by now that wining and dining with fancy nobles and recieving faux honors has never been my cup of tea, Yeslick. I left Baldur's Gate late at night, when I knew no one would notice me gone. Fate is certainly cruel to have made me leave such a party to end up at the mercy of Irenicus; I went from one nightmare to the next. */ + Yft3d
  ++ @48 /* I recieved their praise and their more-than-generous rewards for my deeds, and that is all I wanted out of them. I left Baldur's Gate in the middle of the night, when I knew no one would notice that I was missing. */ + Yft3d
  ++ @49 /* As honored as I was by their praise, I felt I had lingered long enough. Something pulled me away from the city; a feeling deep within me that I still cannot understand. Perhaps it is fate that brought me together with this madman. */ + Yft3d
END

IF ~~ Yft3d
  SAY @50 /* Bah! I appreciate yer concern fer me, <CHARNAME>! Did it ever occur ta ye that ye left me ta deal with all them nobles? Nay, o' course it didn't! */
  = @51 /* I don't blame ye, <PRO_GIRLBOY>. I woulda done the same thing in me youth. Besides, it dinnae take long fer me ta escape to Beregost. */
  = @52 /* After sev'ral days o' bein' questioned on the mines and our adventures and whatnot, I left the city and demanded a position at Taerom's smithy. From there... well, ye know the rest o' that story. */
  IF ~~ EXIT
END

IF ~~ Yft3b
  SAY @53 /* Hoi now, <CHARNAME>! Gettin' a wee bit carried away, aren't ye? */
  IF ~~ + Yft3e
END

IF ~~ Yft3c
  SAY @37 /* <CHARNAME>! What's wrong with ye, <PRO_GIRLBOY>?! I don't remember ye ever speakin' ta me like that before. Is it Imoen? Is it what that Irenicus fella done ta ye? Losin' Khalid and Dynaheir? */
  = @38 /* I understand yer under a lot o' stress, <CHARNAME>, but I donnae take kindly ta be spokin' to that way. I'll leave ye fer now, but just think o' the people around ye before lashin' out like that. */
    IF ~~ EXIT
END


// Friendship #4: Taerom's Smithy #1
IF ~Global("LK#YeslickFriendTalks","GLOBAL",7)~ Yft1
  SAY @55 /* Ye know, as much as I enjoyed ol' Taerom's smithy an' the simple life, there donnae be anythin' quite like open air, skies an' adventure. Even for an ol' bludger like meself. */
  = @56 /* I have ta wonder... does it ever leave ye? Wantin' ta see what's on th' other side o' the ridge? */
  ++ @57 /* Considering you're still around, old friend, I would guess not. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",8) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft1a
  ++ @58 /* I don't know... perhaps it does. And then, there are those who never adventure or go travelling in their lives. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",8) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft1b
  ++ @59 /* I hope so. This life, while exciting, is far too dangerous for me. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",8) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft1c
  ++ @60 /* We don't have time for this, Yeslick. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",8) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft1d
END

IF ~~ Yft1a
  SAY @61 /* Har har! Ye got me there, <CHARNAME>. I have ta agree; wanderlust be a fickle, determined thing, an' never sated in this priest's experience. */
  IF ~~ + Yft1e
END

IF ~~ Yft1b
  SAY @62 /* Bu' if they ever did, they'd never want ta go back! Wanderlust be a fickle thing, an' never sated in this priest's experience. */
  IF ~~ + Yft1e
END

IF ~~ Yft1c
  SAY @63 /* I donnae know... Wanderlust be a fickle thing, an' never sated in this priest's experience. */
  IF ~~ + Yft1e
END

IF ~~ Yft1d
  SAY @64 /* Another time, then, <CHARNAME>. I'll let ye be. */
  IF ~~ EXIT
END

IF ~~ Yft1e
  SAY @65 /* What do ye envision yerself doin' after this is all over, <CHARNAME>? Settlin' down? Continuin' the ride? */
  ++ @66 /* I really don't know. I'm just hoping to survive. */ + Yft1f
  ++ @67 /* I've always wanted to settle down, maybe in a small town... learn a trade. Something like that. */ + Yft1g
  ++ @68 /* I don't think I could ever quit adventuring. It's a part of me as important as any other. */ + Yft1h
  ++ @69 /* Something involving lots of alcohol, dancers and a circus. I haven't ironed out the details yet. */ + Yft1i
END

IF ~~ Yft1f
  SAY @70 /* Ye will. Donnae ye worry about that, me friend. */
  IF ~~ + Yft1j
END

IF ~~ Yft1g
  SAY @71 /* Sounds peaceful, an' nothin' like the life we live o' late. An' ye know if ye ever get interested in smithin', ye know who ta find! */
  IF ~~ + Yft1j
END

IF ~~ Yft1h
  SAY @72 /* That's what I thought. I cannae imagine ye doin' anythin' else. Adventurin' is in yer blood, like me. */
  IF ~~ + Yft1j
END

IF ~~ Yft1i
  SAY @73 /* Hah! Ye scallywag, I shouldnae have expected any better from the likes o' ye. */
  IF ~~ + Yft1j
END

IF ~~ Yft1j
  SAY @74 /* Here's ta th' future, aye? */
  IF ~~ EXIT
END


// Friendship #5: Irenicus part deux, Murder
IF ~Global("LK#YeslickFriendTalks","GLOBAL",9)~ Yftalk4
  SAY @75 /* Hoi, <CHARNAME>... ye alright o'er there, <PRO_GIRLBOY>? That's quite an intense look ye have in yer eyes... */
  = @76 /* <CHARNAME>... ? <CHARNAME>, are ye even listenin' ta me, <PRO_BOYGIRL>?! */
  ++ @77 /* Oh, Yeslick! You startled me. What is it you need, my friend? */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",10) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft4a
  ++ @78 /* Hm, yes? What is it, Yeslick... ? */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",10) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft4a
  ++ @79 /* Damn, I had hoped if I kept quiet long enough you would leave me be. Why must things never go my way? */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",10) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft4b
END

IF ~~ Yft4a
  SAY @80 /* What in Clangeddin's name is the matter with ye? That's the third time today I've seen ye nod off like that, like ye was either about ta kill someone or... or ye was under the influence o' some powerful ale. */
  ++ @81 /* You noticed? (sigh) My mind is filled with thoughts of Irenicus. The closer we get to stopping him, the more impossible it seems to be... and yet that only strengthens my urge to confront him. */ + Yft4c
  ++ @82 /* I suppose I am allowing Irenicus's mind games to affect me. The more I think of what he could be doing to Imoen, the more frenzied my search for Irenicus becomes. */ + Yft4c
  ++ @83 /* What are you talking about, Yeslick? There's nothing wrong with me at all. */ + Yft4d
END

IF ~~ Yft4c
  SAY @84 /* Them're dangerous words ye be usin', <CHARNAME>. Whatever yer reasons may be, yer quest for vengeance is a dangerous one. */
  = @85 /* Yer prey – this spellslinger, Irenicus – is enough ta make Sarevok seem like a wee foundling. Combine that with yer... unique heritage and ye have a recipe fer bad things, <PRO_GIRLBOY>. */
  ++ @86 /* Don't compare me to the likes of Sarevok. I am nothing like him; I will never allow any inklings of my "father" to blur my judgement. */ + Yft4e
  ++ @87 /* Come on, Yeslick! You know me; good ol' <CHARNAME>! Would you really expect me to turn out like Sarevok? The blood in my veins has no more hold over me than Garrick's ballads did. */ + Yft4f
  ++ @88 /* I see my heritage as a wonderful fuel that I will use to obtain my vengeance. That raving lunatic had no idea what he had done by getting himself involved with a Bhaalspawn! */ + Yft4g
END

IF ~~ Yft4e
  SAY @89 /* Music ta me ears, <CHARNAME>, really... I donnae know if I could bare ta see ye succumbing ta the evil ways o' yer kin after all I've gone through ta steer ye on the right path. */
  = @90 /* Promise me somethin', though, <CHARNAME>. If ye e'er feel the evil blood in yer veins takin' hold o' ye, let me know. I'm here fer ye, <PRO_GIRLBOY> - no matter what may happen to ye – and I'll help ye in any way I can. */
  ++ @91 /*  I promise, Yeslick. Thank you. */ + Yft4h
  ++ @92 /*  I promise, Yeslick. In return, however, I must ask you of something as well. If my heritage ever proves to be too much for me and I lose control over my body, I want you to stop me. No matter what it takes, do not allow me to harm anyone I care about. */ + Yft4i
END

IF ~~ Yft4h
  SAY @93 /* Hoi, anytime. Ye've always been a good friend, and I know ye'd do the same fer me. */
  IF ~~ EXIT
END

IF ~~ Yft4i
  SAY @94 /* I... yes. I promise, <CHARNAME>. Clangeddin forbid that any situation like that happen, but I will be ready and willing. */
  IF ~~ EXIT
END

IF ~~ Yft4f
  SAY @95 /* <CHARNAME>, this is no time ta be jokin'! I'm tryin' ta be serious, and all ye can do is crack some wise? */
  = @96 /* But... I suppose that's just the way ye are. Ye've always been a jovial bugger, haven't ye? Aye, I'm sorry fer snappin' at ye like that; hoi, I guess I'm just gettin' emotional in me old age. */
  = @97 /* I'm glad ye have no intentions o' turnin' into another Sarevok, though... I donnae know if I could bare ta see ye succumbing ta yer kins' evil ways after all I've gone through ta steer ye on the right path. */
  = @90 /* Promise me somethin', though, <CHARNAME>. If ye e'er feel the evil blood in yer veins takin' hold o' ye, let me know. I'm here fer ye, <PRO_GIRLBOY> - no matter what may happen to ye – and I'll help ye in any way I can. */
  ++ @98 /* I promise, Yeslick. Thank you. */ + Yft4h
  ++ @99 /* I promise, Yeslick. In return, however, I must ask you of something as well. If my heritage ever proves to be too much for me and I lose control over my body, I want you to stop me. No matter what it takes, do not allow me to harm anyone I care about. */ + Yft4i
END

IF ~~ Yft4g
  SAY @100 /* <CHARNAME>... ye aren't plannin' on followin' in the footsteps o' yer... "father", are ye? */
  ++ @101 /* Maybe, maybe not. I haven't decided yet. Still, my powers as a Bhaalspawn will give me the edge against Irenicus, and that is all I need for now. */ + Yft4j
  ++ @102 /*  No, I don't have any intentions of ascending and becoming the new god of murder or anything of the sort. I just need my Bhaalspawn powers to attend to... personal matters. */ + Yft4j
  ++ @103 /* If I do, it isn't your place to stop me. If you have a problem with me claiming what is rightfully mine, Yeslick, I'm going to have to ask that you leave my sight; I refuse to have anyone hold me back. Not anymore. */ + Yft4k
END

IF ~~ Yft4j
  SAY @104 /* That ain't the <CHARNAME> I know... Has the hunt fer Irenicus scarred ye that deeply? Whatever plans he might have cannae compare to the damage he's already done... */
  IF ~~ DO ~SetGlobal("YeslickFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~  Yft4k
  SAY @105 /* So be it, <CHARNAME>... if that's what ye really want. But don't bother lookin' fer me... I'm done here. Have fun on the way ta hell. */
  IF ~~ DO ~SetGlobal("YeslickFriendshipActive","GLOBAL",3) SetGlobal("YeslickJoined","GLOBAL",0) LeaveParty()~ EXIT
END

IF ~~  Yft4d
  SAY @106 /* Are ye sure, <PRO_GIRLBOY>? Ye know I'm here ta talk to if ye be needin' an ear. */
  ++ @107 /* ... You noticed, did you? Irenicus... my mind is flooded with thoughts of him. I feel as though the closer we get to stopping him, the more impossible our odds are... and yet that only strengthens my urge to confront him. */ + Yft4c
  ++ @108 /* I had hoped no one else had noticed; I suppose I am allowing Irenicus's mind games to affect me. The more I think of what he could be doing to Imoen, the more frenzied my search for Irenicus seems to become. */ + Yft4c
  ++ @109 /* I'm fine, Yeslick. I appreciate your concern, but there's nothing wrong with me. */ + Yft4l
END

IF ~~  Yft4l
  SAY @110 /* Aye, alright. If ye insist, <CHARNAME>. */
  IF ~~ EXIT
END

IF ~~  Yft4b
  SAY @111 /* Hmph! Well, iffin' that's how ye think o' me, then I'll not bother! */
  IF ~~ DO ~SetGlobal("YeslickFriendshipActive","GLOBAL",3)~ EXIT
END


// Friendship #6: Irenicus and Imoen
IF ~Global("LK#YeslickFriendTalks","GLOBAL",11)~ Yftalk5
  SAY @112 /* Say, <CHARNAME>... what do ye reckon Irenicus wants with Imoen? He must've had some kind o' reason fer havin' the cowlies take her with 'em ta Spellhold, eh? But what on Faerun could he be needin' a little girl fer? */
  ++ @113 /* His reasons matter not to me, Yeslick. I just want my friend back. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",12) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft5a
  ++ @114 /* Maybe he's into that sort of thing. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",12) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft5b
  ++ @115 /* I have wondered that myself. As dear as she is to me, there isn't anything extraoadinary about her as far as I know. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",12) RealSetGlobalTimer("LK#YeslickFriendTalksTimer","GLOBAL",7200)~ + Yft5c
END

IF ~~ Yft5a
  SAY @116 /* Hoi! Yer inspirin' enthusiasm aside, surely ye've wondered what kind o' nefarious plans he has up his sleeve. Now, I'm not the thinkin' type, I'll admit, but I've been conjurin' up some diff'rent scenarios o' what he could be plottin'. */
  = @117 /* Maybe he's another Bhaalspawn? Sarevok and yerself cannae be the only ones out there, aye? */
  ++ @118 /* Should that be the case, I'll make sure he meets the same fate as my dearly departed "brother". */ + Yft5d
  ++ @119 /* I suppose that is possible, and I must admit that I have wondered the same. He spoke to me of the Bhaalspawn...he knows much about "us". That still would not explain what he wants with Imoen, however. */ + Yft5e
  ++ @120 /* Yes, wonderful... more of my loving family to deal with. Just what I wanted. Why not just gather them all up for a family reunion? We could get caught up and talk of the "good ol' days" of when our father was in charge. */ + Yft5f
END

IF ~~ Yft5d
  SAY @121 /* A fitting fate indeed fer a pansy like that bastard. I'll be right with ye as ye give him what for, rest assured. */
  = @122 /* But... hm... I reckon that don't explain away his reasons fer needin' Imoen, though. Damn! All this thinkin' gets ta me head after awhile. */
  IF ~~ + Yft5i
END

IF ~~ Yft5i
  SAY @123 /* Hoi... don't worry 'bout Imoen, <PRO_GIRLBOY>. I know yer worried 'bout her bein' alone with that craven cur, but she's a big girl and she can take care o' herself. */
  = @124 /* Hoi! The feisty lil' bugger is probably givin' the cowlies hell! */
  ++ @125 /* I suppose you are right, Yeslick. I can't help but worry about her, though; to me, she will always be the scared little girl who consistantly needed me to get her out of trouble. */ + Yft5g
  ++ @126 /* I do not find myself thinking of her that often. She's resourceful enough to take care of herself until we find passage to Spellhold. */ + Yft5h
END

IF ~~ Yft5g
  SAY @127 /* Aye, I can understand where yer comin' from, what with bein' the oldest o' seven brothers and sisters. Then again, I doubt none o' me kin ever got inta a mess quite like this... */
  IF ~~ EXIT
END

IF ~~ Yft5h
  SAY @128 /* Hoi! Surely ye think o' her from time ta time, eh? Ye better, 'cause we're the only hope the poor lass has! */
  IF ~~ EXIT
END

IF ~~ Yft5e
  SAY @129 /* Oh, aye... heh, I reckon that's why the thinkin' is best left ta you! */
  IF ~~ + Yft5i
END

IF ~~ Yft5f
  SAY @130 /* Harr! A true assembly of debauchery if there ever was one, fer sure! */
  IF ~~ + Yft5i
END

IF ~~ Yft5b
  SAY @131 /* What?! <CHARNAME>, what kind o' vile nonsense are ye blabberin' on about?! This is Imoen we're talkin' 'bout! How can ye say somethin' so repulsive? */
  = @132 /* Oh, aye... humor as a copin' mecha-... mechanini... a way o' dealin' with losin' Imoen, aye? I see what yer doin'. */
  = @133 /* Now, as fer Irenicus, I've been thinkin' o' what he could be plottin'. Hold on, give me time ta explain meself; I know what yer thinkin', me not bein' the "thinkin' type". But hear me out: Maybe he's another Bhaalspawn? Sarevok and yerself cannae be the only ones out there, aye? */
  ++ @118 /* Should that be the case, I'll make sure he meets the same fate as my dearly departed "brother". */ + Yft5d
  ++ @119 /* I suppose that is possible, and I must admit that I have wondered the same. He spoke to me of the Bhaalspawn...he knows much about "us". That still would not explain what he wants with Imoen, however. */ + Yft5e
  ++ @120 /* Yes, wonderful... more of my loving family to deal with. Just what I wanted. Why not just gather them all up for a family reunion? We could get caught up and talk of the "good ol' days" of when our father was in charge. */ + Yft5f
END

IF ~~ Yft5c
  SAY @134 /* Aye, that's what I was thinkin', too. Mebbe it isn't Imoen he wants at all. Mebbe she's just bait ta lure ye ta Spellhold? If so, I reckon we need ta be plenty careful. */
  = @135 /* But still... why you? Ye say ye've never met the mageling afore, so what business could he be havin' with ye? */
  = @136 /* Now, I'm not the thinkin' type, I'll admit, but I've been conjurin' up some diff'rent scenarios o' what he could be plottin'. Maybe he's another Bhaalspawn? Sarevok and yerself cannae be the only ones out there, aye? */
  ++ @118 /* Should that be the case, I'll make sure he meets the same fate as my dearly departed "brother". */ + Yft5d
  ++ @119 /* I suppose that is possible, and I must admit that I have wondered the same. He spoke to me of the Bhaalspawn...he knows much about "us". That still would not explain what he wants with Imoen, however. */ + Yft5e
  ++ @137 /* Yes, wonderful... more of my loving family to deal with. Just what I wanted! Why not just gather them all up for a family reunion? We could get caught up and talk of the "good ol' days" of when our father was in charge. */ + Yft5f
END


// Friendship #7: Amn
IF ~Global("LK#YeslickFriendTalks","GLOBAL",13)~ Yftalk6
  SAY @138 /* Ye know, <CHARNAME>, I've ne'er been one fer the city life, but this Amn burgh is somethin' else. Old age must be takin' it's toll for me ta be willin' ta stay in this hellhole fer so long. */
  ++ @139 /* You don't like Amn, Yeslick? */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",14)~ + Yft6a
  ++ @140 /* I don't much care for it either, Yeslick, and I assure you that I would never want to be here for anything other than business. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",14)~ + Yft6b
  ++ @141 /* I'm right there with you. I'm more of an outdoorsman, myself; I'll take nature's company over the company of these hooligans any day. */ DO ~SetGlobal("LK#YeslickFriendTalks","GLOBAL",14)~ + Yft6b
END

IF ~~ Yft6a
  SAY @142 /* "Don't like Amn"... ? Ye really are an aloof bugger, ain't ye? */
  = @143 /* Look around ye, <CHARNAME>! In a place where the city guards are pushin' as much black lotus as the local thieves guild and where courtesans are as commonplace as men and women o' any other profession, what hope does this city be havin' fer growth and prosperity and all that? */
  = @144 /* When fools can be kings, what hope do we have fer anythin' good? */
  ++ @145 /* There cannot be change unless there is someone willing to work toward it. Bare with me, Yeslick, and there might be some hope for this city. */ + Yft6c
  ++ @146 /* Every city has it's fair share of problems, Yeslick. Amn is no worse than Baldur's Gate. */ + Yft6d
  ++ @147 /* We're just going to have to turn a blind eye for now, because we have more important business to attend to. Leave the city's affairs to the local militia. */ + Yft6e
END

IF ~~ Yft6c
  SAY @148 /* Aye, if there were any <PRO_MANWOMAN> ta bring about change in this place, it'd be you, <CHARNAME>. */
  = @149 /* I sometimes worry that... that when I'm gone, things'll only get worse. If things are the way they are now, will there be any society left a' hundred or so years af'er I'm gone? */
  ++ @150 /* I never knew this bothered you so much, Yeslick. You always seem fairly content. */ + Yft6f
  ++ @151 /* Whining isn't going to bring about change. Just quit worrying about it so much, and help me take action. */ + Yft6g
END

IF ~~ Yft6f
  SAY @152 /* Hoi... me neither, <CHARNAME>. Do yerself a favor, <PRO_GIRLBOY>; ne'er grow old. */
  IF ~~ EXIT
END

IF ~~ Yft6g
  SAY @153 /* Hmph! If ye weren't right, <CHARNAME>, me hammer would be gettin' some action right about now. But... yer right. Damn. */
  = @154 /* Hoi, lets get goin' and make this city a better place, 'afore your ego swelled up anymore! */
  IF ~~ EXIT
END

IF ~~ Yft6d
  SAY @155 /* That may be so, but that donnae make it any more tolerable! What if, 'cause people are always explainin' the increase in crime away like ye just did, it spreads and worsens? */
  = @149 /* I sometimes worry that... that when I'm gone, things'll only get worse. If things are the way they are now, will there be any society left a' hundred or so years af'er I'm gone? */
  ++ @150 /* I never knew this bothered you so much, Yeslick. You always seem fairly content. */ + Yft6f
  ++ @151 /* Whining isn't going to bring about change. Just quit worrying about it so much, and help me take action. */ + Yft6g
END

IF ~~ Yft6e
  SAY @156 /* Hoi! Savin' Imoen and stoppin' Irenicus may be important, aye, but we have the ability ta do some good while we're here! Why not put it ta use? */
  = @157 /* But... I reckon yer the boss. This is your show, so ye can run it however ye like. Sometimes I just sometimes worry that... that when I'm gone, things'll only get worse. */
  = @158 /* If things are the way they are now, will there be any society left a' hundred or so years af'er I'm gone? */
  ++ @150 /* I never knew this bothered you so much, Yeslick. You always seem fairly content. */ + Yft6f
  ++ @151 /* Whining isn't going to bring about change. Just quit worrying about it so much, and help me take action. */ + Yft6g
END

IF ~~ Yft6b
  SAY @159 /* Aye, so let's do what we came ta do and leave. Just being here is gettin' me worked up! */
  = @160 /* Even so... I cannae help but think we should do somethin'. If no one does anythin' ta work toward a better future fer the city, then things will always be the same. */
  = @161 /* Maybe stickin' around fer awhile would be worth it ta make things right around here? */
  ++ @162 /* Maybe you're right, Yeslick. I must say that seeing this city for what it is and not doing anything to make a difference is difficult to do. */ + Yft6c
  ++ @147 /* We're just going to have to turn a blind eye for now, because we have more important business to attend to. Leave the city's affairs to the local militia. */ + Yft6e
END


// friendship: Drow talk
IF ~Global("LK#YeslickDrowTalk","GLOBAL",2)~ Yftd.intro
  SAY @163 /* These drow do me' chops in, <CHARNAME>. Bloody lot o' ne'er-do-wells... not a good one o' 'em, if ye ask me. I cannae wait ta see the back o' this place. */
  ++ @164 /* You and me both. */ DO ~SetGlobal("LK#YeslickDrowTalk","GLOBAL",3)~ + Yftda
  ++ @165 /* I don't mind it here. The lies, the intrigue... it's a little exciting, don't you think? */ DO ~SetGlobal("LK#YeslickDrowTalk","GLOBAL",3)~ + Yftdb
  ++ @166 /* Trust me, if I had a choice, we would never have come here. */ DO ~SetGlobal("LK#YeslickDrowTalk","GLOBAL",3)~ + Yftdc
  ++ @167 /* I'm sure. We don't have time for this, Yeslick. */ DO ~SetGlobal("LK#YeslickDrowTalk","GLOBAL",3)~ + Yftdd
END

IF ~~ Yftda
  SAY @168 /* Give me a nice bandit over these buggers any day. I've never wanted ta see the sky so much, an' I'm a ruddy dwarf! */
  IF ~~ EXIT
END

IF ~~ Yftdb
  SAY @169 /* Maybe fer ye, but this ol' dwarf has only a wee bit o' patience fer these dark-skinned bastards an' their plots. */
  IF ~~ + Yftda
END

IF ~~ Yftdc
  SAY @170 /* I know that, ye daft <PRO_RACE>. */
  = @171 /* Sorry, me <PRO_GIRLBOY>, me temper's gettin' th' better o' me. This ol'dwarf has only a wee bit o' patience fer these dark-skinned bastards an' their plots. */
  IF ~~ + Yftda
END

IF ~~ Yftdd
  SAY @172 /* Then let's be on our way an' get out o' this thrice-damned place fast as we possibly can. */
  IF ~~ EXIT
END

END


// friendship: after killing Bodhi
CHAIN IF ~Global("LK#YeslickBodhiTalk","GLOBAL",2)~ THEN LK#YESJ Yftb.intro
  @173 /* One down, one to go, eh <CHARNAME>? */
  BRANCH ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ BEGIN
  == LK#YESJ @174 /* Me ol' heart swells wi' gladness fer ye, Imoen. How're ye feelin'? */
  == IMOEN2J @175 /* Chipper as anyone who's just had no soul for weeks could feel, I guess. I'm alright. */
  == LK#YESJ @176 /* Good ta hear. We'll get some good strong ale into ye and some thick broth, ye'll be right as rain. */
  END
  == LK#YESJ @177 /* So what now, <CHARNAME>? We hunt down the bastard who be doin' this ta ye and Imoen? */
END
  ++ @178 /* Damn right we do. I'm tired of chasing--I want blood, godsdamn it, not a cold trail. */ DO ~SetGlobal("LK#YeslickBodhiTalk","GLOBAL",3)~ EXTERN LK#YESJ Yftb.trail
  ++ @179 /* I suppose so. I just want this to be over with. */ DO ~SetGlobal("LK#YeslickBodhiTalk","GLOBAL",3)~ EXTERN LK#YESJ Yftb.over
  ++ @180 /* I just hope we're powerful enough to take him down. */ DO ~SetGlobal("LK#YeslickBodhiTalk","GLOBAL",3)~ EXTERN LK#YESJ Yftb.down

APPEND LK#YESJ

IF ~~ Yftb.trail
  SAY @181 /* I know what ye mean, me friend. What he did ta ye and th' lass--that was unforgivable. He be deservin' of a fate far worse than death. */
  ++ @182 /* You don't know how right you are. */ + Yftb.right
  ++ @183 /* I feel more sorry for him than anything, to be honest. */ + Yftb.sorry
  ++ @184 /* Death will have to do for the moment. The Gods can handle the rest. */ + Yftb.gods
END

IF ~~ Yftb.over
  SAY @185 /* What he did ta ye and th' lass--that was unforgivable. He be deservin' of a fate far worse than death. */
  ++ @182 /* You don't know how right you are. */ + Yftb.right
  ++ @183 /* I feel more sorry for him than anything, to be honest. */ + Yftb.sorry
  ++ @184 /* Death will have to do for the moment. The Gods can handle the rest. */ + Yftb.gods
END

IF ~~ Yftb.down
  SAY @186 /* Ye've come a long way since we first met, <PRO_GIRLBOY>. I donnae think ye have a thing ta be worryin' yerself about. */
  = @187 /* We can take 'im, and whatever denizens o' the hells he can throw at us. We got justice on our side, an' he has the deaths of only the Gods be knowin' how many people on his. */
  IF ~~ + Yftb.over
END

IF ~~ Yftb.right
  SAY @188 /* Oh, I be thinkin' I do. */
  IF ~~ + Yftb.gods
END

IF ~~ Yftb.sorry
  SAY @189 /* Sometimes yer too good fer yer own good, me friend. Compassion 'an pity 'an all that claptrap be damned, in this--he took yer ruddy *soul*, 'an Imoen's too. */
  IF ~~ + Yftb.gods
END

IF ~~ Yftb.gods
  SAY @190 /* I'll be prayin' fer him ta have a tormented afterlife, ye can be right sure o' that, me friend. */
  IF ~~ + Yftb.end
END

IF ~~ Yftb.end
  SAY @191 /* It ain't often someone raises me ire like he has with his actions. This ol' dwarf has seen plenty 'o atrocities, but nothin' be matchin' up ta what that bastard has done. */
  = @192 /* Let's get out o' here an' kill this ruttin' mage. */
  IF ~~ EXIT
END


// friendship: Suldannessellar
IF ~Global("LK#YeslickSuldTalk","GLOBAL",2)~ Yfts.intro
  SAY @193 /* Only the Clangeddin-damned elves would build a bluddae fairy city so high up in the bluddae trees that ye can barely see the bluddae ground! So much air cannae be good fer ye! */
  = @194 /* Cannae we just leave 'em here, an' go back down? I donnae 'ow much this ol' dwarf can take o' this! */
  ++ @195 /* Don't tell me the fearless Yeslick is afraid of *heights*? */ DO ~SetGlobal("LK#YeslickSuldTalk","GLOBAL",3)~ + Yfts.afraid
  ++ @196 /* I'm not entirely comfortable here either, Yeslick, but it's what we have to do. */ DO ~SetGlobal("LK#YeslickSuldTalk","GLOBAL",3)~ + Yfts.necessity
  + ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @197 /* Watch whose heritage you're insulting there, dwarf. */ DO ~SetGlobal("LK#YeslickSuldTalk","GLOBAL",3)~ + Yfts.elf
  ++ @198 /* We don't have time for this, Yeslick. Pull yourself together. */ DO ~SetGlobal("LK#YeslickSuldTalk","GLOBAL",3)~ + Yfts.pull
END

IF ~~ Yfts.afraid
  SAY @199 /* I donnae be *afraid*, <CHARNAME>, I be scared out o' me ruttin' mind! Me 'an heights, we ain't never got along. I make a strict point o' stayin' with me feet on the soil, an' never deviatin' from it. */
  ++ @200 /* We've all got to face our fears sometime, I suppose. */ + Yfts.sometime
  ++ @201 /* Don't worry, master dwarf, I'll hold your hand. */ + Yfts.hand
  ++ @202 /* And how old are you again? */ + Yfts.hand
  ++ @203 /* Just don't think about it. We've got bigger things to be worrying about. */ + Yfts.worry
END

IF ~~ Yfts.necessity
  SAY @204 /* Me 'an heights, we ain't never got along. I make a strict point o' stayin' with me feet on the soil, an' never deviatin' from it. */
  ++ @200 /* We've all got to face our fears sometime, I suppose. */ + Yfts.sometime
  ++ @201 /* Don't worry, master dwarf, I'll hold your hand. */ + Yfts.hand
  ++ @202 /* And how old are you again? */ + Yfts.hand
  ++ @203 /* Just don't think about it. We've got bigger things to be worrying about. */ + Yfts.worry
END
  
IF ~~ Yfts.elf
  SAY @205 /* Me apologies, <CHARNAME>, but I donnae be thinkin' of ye as an elf. Yer hardly the prancin', flower-pickin' type. */
  ++ @206 /* And neither are most of my relatives, Yeslick. */ + Yfts.rel
  ++ @207 /* You may have a point there, yes. Still, I'd appreciate it if you didn't insult elves. */ + Yfts.city
  ++ @208 /* That doesn't mean you should be racist. I thought better of you than that. */ + Yfts.better
END

IF ~~ Yfts.pull
  SAY @209 /* Donna blame me if I collapse out o' fright then, me friend. Just--just lead th' way. */
  = @210 /* I think I'm gonna be sick... */
  IF ~~ EXIT
END

IF ~~ Yfts.sometime
  SAY @211 /* Yea, but does it have ta be *now*, right in th' middle o' all this mess wi' th' mage? It just be th' worst o' timin', I tell ye! */
  IF ~~ + Yfts.city
END
  
IF ~~ Yfts.hand
  SAY @212 /* Don't ye be mockin' me, <PRO_GIRLBOY>, I'm sure ye've got yer own faults ye'd rather not have revealed ta th' world! */
  IF ~~ + Yfts.city
END

IF ~~ Yfts.worry
  SAY @213 /* Ye've got a point there, me friend. Still, there be somethin' bluddae unnatural about a city built in th' trees, ye've got ta admit. */
  IF ~~ + Yfts.end
END

IF ~~ Yfts.rel
  SAY @214 /* Eh, I donnae know if I'd be goin' *that* far, but... */
  = @215 /* Either way, ye've got ta admit, there's somethin' bluddae unnatural about a city built in th' trees. It's just wrong. */
  IF ~~ + Yfts.end
END

IF ~~ Yfts.better
  SAY @216 /* Perhaps yer right. But still, there's somethin' bluddae unnatural about a city built in th' trees, ye've got ta admit. */
  IF ~~ + Yfts.end
END

IF ~~ Yfts.city
  SAY @217 /* Ye've got ta admit, there's somethin' bluddae unnatural about a city built in th' trees. It's just wrong. */
  IF ~~ + Yfts.end
END

IF ~~ Yfts.end
  SAY @218 /* Bluddae elves... */
  IF ~~ EXIT
END

END


// ---------------------------------------------
// Yeslick Interjections
// ---------------------------------------------
// Aerie
INTERJECT AERIE 26 LK#YesAerie
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @219 /* By Clangeddin's 'ammer, the monster has the voice o' a wee girl! What kind o' trickery is this? */
COPY_TRANS AERIE 29


// VICONIA AND THE FANATICS
I_C_T VICG1 2 LK#YesVic
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @220 /* They aim ta burn the drow? Ha! I cannae tell ye what she did ta earn their ire, but I'm sure she deserves it! */
END


// OFFERED THE JOB OF AXING VALYGAR
I_C_T TOLGER 18 LK#YesTolg
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @221 /* <CHARNAME>, there might be more ta this than what them officials let on. I say we go find this fella and see what this is really all about. */
END


// RENFELD POISONED
INTERJECT RENFELD 1 LK#YesRen
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @222 /* Poison? By Clageddin's 'ammer, this poor sod doesn't 'ave a chance! The least we could be doin', <CHARNAME>, is fulfillin' his last request; off to the docks, I say! */
END
  ++ @223 /* Where exactly is this place? */ EXTERN RENFELD 3


// HENDAK FREED
I_C_T NOBLE2 9 LK#YesHenfreed
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @224 /* Come, <CHARNAME>! My 'ammer yearns fer the chance at smashin' some slaver skulls in! */
  == NOBLE2 @225 /* Aiiiee! */
END


// HENDAK SAYS: MORE SLAVES FOOL
INTERJECT HENDAK 18 LK#YesHenslaves
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @226 /* While there ain't no way in the Nine 'ells we're goin' ta be able ta fix all of Athkatla, I think I'll be able ta rest easier knowin' we at least tried. */
END
  + ~!Global("FreeSlaves","GLOBAL",1)~ + #17437 + 55
  + ~!Global("FreeSlaves","GLOBAL",1)~ + #17438 + 20
  + ~!Global("FreeSlaves","GLOBAL",1)~ + #17492 + 42
  + ~Global("FreeSlaves","GLOBAL",1)~ + #61134 + 30
  + ~!Global("FreeSlaves","GLOBAL",1)~ + #17439 + 22
  + ~!Global("FreeSlaves","GLOBAL",1)~ + #17440 + 23


// INSIDE THE TOME FOR THE BOOK OF KAZA
I_C_T KORGANJ 2 LK#YesKorg
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @227 /* Ye mean ta tell me we went through all o' this trouble fer the bloody merc an' 'is book ain't even here?! */
  == KORGANJ @228 /* Maybe if ye hadn't been slowin' us down, old man, we would have gotten here 'afore those bloody, thievin' fools did! */
END

I_C_T KORGANJ 36 LK#YesKorg
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @227 /* Ye mean ta tell me we went through all o' this trouble fer the bloody merc an' 'is book ain't even here?! */
  == KORGANJ @228 /* Maybe if ye hadn't been slowin' us down, old man, we would have gotten here 'afore those bloody, thievin' fools did! */
END


// KILLIN' KORGAN'S CREW
I_C_T KORGANJ 12 LK#YesKorg2
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @229 /* While I don't be havin' no fondness fer the mercenary, I think this city would be better off without the likes o' these ruffians. Then again, the city would also be better off without the likes o' Bloodaxe himself, but there donnae seem ta be anything I can be doin' about that... yet. */
  == KORGANJ @230 /* Watch yer mouth, priest, lest ye find yerself lackin' what it be attached to! */
END


// THE CULT PROPHET IN THE GOVERNMENT DISTRICT
I_C_T PROPHET1 4 LK#YesProph1
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID) !Global("LK#YeslickProphets","GLOBAL",1)~ THEN @231 /* May the gods be havin' mercy on these poor, misguided fools... */
  DO ~SetGlobal("LK#YeslickProphets","GLOBAL",1)~
END

I_C_T PROPHET2 6 LK#YesProph2
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID) !Global("LK#YeslickProphets","GLOBAL",1)~ THEN @231 /* May the gods be havin' mercy on these poor, misguided fools... */
  DO ~SetGlobal("LK#YeslickProphets","GLOBAL",1)~
END

I_C_T PROPHET2 3 LK#YesProph3
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID) !Global("LK#YeslickProphets","GLOBAL",1)~ THEN @231 /* May the gods be havin' mercy on these poor, misguided fools... */
  DO ~SetGlobal("LK#YeslickProphets","GLOBAL",1)~
END


//WELLYN WANTS LITTLEMAN
I_C_T WELLYN 8 LK#YesWell
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @232 /* I have no patience fer fiends who get their jollies by killin' innocent childrens! Lets find this bastard and make sure he pays fer the crimes he committed! */
  == WELLYN @233 /* (sob) I just want my Littleman back! */
END


// SAVIN' THE MAN FROM UNCLE LESTER
I_C_T MOURNER1 7 LK#YesLest
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @234 /* Ungrateful lout! We saved yer hide from that ghoul, an' all ye got is complaints? I think our time would 'ave been better spent elsewhere! */
  == MOURNER1 @235 /* I don't have time for you idiots, I have to get him re-buried! Out of my way! */
END

// EDWIN TURNS INTO A GIRL
I_C_T EDWINJ 180 LK#YesEdwin
  == LK#YESJ IF ~!Global("LK#YesEdwin2","GLOBAL",1) InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @236 /* Ohohoho! I'm thinkin' that's a far more fitting body fer ye, pansy Red Wizard! */
  == EDWINJ @237 /* This is intolerable! */
END

I_C_T EDWINJ 173 LK#YesEdwin2
  == LK#YESJ IF ~!Global("LK#YesEdwin","GLOBAL",1) InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @236 /* Ohohoho! I'm thinkin' that's a far more fitting body fer ye, pansy Red Wizard! */
  == EDWINJ @237 /* This is intolerable! */
END


// BODHI OFFER
I_C_T BODHI 6 LK#YesBodhi
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @238 /* No... no, <CHARNAME>. Donnae listen ta this woman's lies! I cannae explain why, but I just know this will turn out badly! */
END


// IF YOU AGREE TO SIDE WITH BODHI
I_C_T BODHI 18 LK#YesBodhi2
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @239 /* I cannae understand why ye would be willin' ta trust this woman. I'll follow ye still, <PRO_GIRLBOY>, if only ta see that ye stay safe. I will not let this she-devil harm ye! */
END


// THE RUFFIANS WHO PICK A FIGHT IN COPPER CORONET
I_C_T RUFPAL2 5 LK#YesRuff
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @240 /* These ruffians donnae know who they be messin' with! Have mercy on them, <CHARNAME>; I'd hate ta bring harm ta anyone 'cause o' their ignorance. */
END


// ORDERS FROM RENAL TO KILL MAE'VAR
I_C_T RENAL 45 LK#YesRenal
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @241 /* So we're ta help a thief kill a thief, eh? Well, if it be helpin' us find Imoen, then I suppose the ends justify the means... */
  == RENAL @242 /* The ends *always* justify the means, my short friend. */
END


// MAE'VAR WANTS TALOS BLING
I_C_T MAEVAR 17 LK#YesMae
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @243 /* I don't think it's wise ta cross the church of Talos, <CHARNAME>... the Stormlords donnae take kindly ta thieves. */
  == MAEVAR @244 /* And the thieves guild takes even less kindly to those who deny them. You've got your orders, now get you gone! */
END


// MEETING EDWIN
INTERJECT EDWIN 0 LK#YesEdwinMeet
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @245 /* So we're ta join forces with the mageling again, eh? Fine, as long as he donnae try anythin' funny. */
  == LK#YESJ IF ~InParty("Edwun") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @246 /* I assure you, dwarf, that there is nothing amusing about the business we must attend to. (No doubt, though, that this simpleton will find amusement in just about anything). */
COPY_TRANS EDWIN 35


// LT. AEGISFIELD AND THE SKINNING
I_C_T3 INSPECT 13 LK#YesAegis
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID) RandomNum(2,1)~ THEN @247 /* Skinned alive?! Murder is one thing, but fer the corpse ta be defiled in such a way... Whoever has done this must be brought ta justice, <CHARNAME>! */
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID) RandomNum(2,2)~ THEN @248 /* That poor lad... <CHARNAME>, let us tend ta this sick bastard before he ruins anymore lives! */
END


// IDLE HANDS IN IMNESVALE
I_C_T UHKID01 20 LK#YesImne
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @249 /* I cannae help but wonder if what we did was the right thing, but it puts a smile on me face ta seem them young lads so excited. */
  == UHKID01 @250 /* I can't wait to slay me some dragons! Let's go! */
END

I_C_T UHKID01 18 LK#YesImne2
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @249 /* I cannae help but wonder if what we did was the right thing, but it puts a smile on me face ta seem them young lads so excited. */
  == UHKID01 @250 /* I can't wait to slay me some dragons! Let's go! */
END

I_C_T UHKID01 22 LK#YesImne3
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @249 /* I cannae help but wonder if what we did was the right thing, but it puts a smile on me face ta seem them young lads so excited. */
  == UHKID01 @250 /* I can't wait to slay me some dragons! Let's go! */
END


// FIND OUT WHAT HAPPENED TO MONTARON
I_C_T LYROS 19 LK#YesXzar
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @251 /* We're not really goin' ta get on the Harper's bad side fer the sake o' the Zhent scum, are we? It's a bad idea if ye ask me, <CHARNAME>! */
END

// MADULF WANTS TO MAKE A DEAL WITH THE VILLAGE
I_C_T UHOGRE01 15 LK#YesMadulf
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @252 /* I can't see the mayor o' the town agreein' ta this, but the ogre and his friends deserve a chance ta do right. */
  == UHOGRE01 @253 /* Madulf appreciate you trying. */
END


// HELPING RAELIS
I_C_T RAELIS 53 LK#YesRaelis
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @254 /* I may not be the smartest dwarf in Faerun, but somethin' tells me there's more ta this story than this lass be tellin' us... */
  == RAELIS @255 /* I assure you, there is nothing further to it. Please! Time is of the essence! */
END


// RESCUING MAZZY FENTAN
INTERJECT MAZZY 13 LK#YesMazzy
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @256 /* <CHARNAME>, let us be sidin' with this young Halfling lass. She deserves a chance ta avenge her comrades. Besides, another sword arm is always needed with the way we be travelin', eh? */
END
  ++ #24037 + 53
  ++ #24038 + 25
  + ~Global("MazzyFreed","GLOBAL",0)~ + #24039 + 6


// HELPING JERMIEN
I_C_T2 JUGJER01 18 LK#YesJerm
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @257 /* I tire o' helpin' these Cowlies! Ain't they the ones who kidnapped Imoen? Why does it seem we're always bein' stuck helpin' them out everywhere we go, then? */
  == JUGJER01 @258 /* What are you standing around for, then? Off with you! My experiments will wait for no man! */
END


// KING STROM'S MASK
INTERJECT SAMIA 12 LK#YesSamia
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @259 /* Treachery! How dare this witch waltz into this crypt thinkin' she can steal whatever she please?! I cannae allow her to defile the grave o' this King fella! */
COPY_TRANS SAMIA 17


// NALIA'S PLEA FOR HELP
INTERJECT NALIA 0 LK#YesNalia
  == LK#YESJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @260 /* A young lass in distress? I know a certain half-elf that would be most displeased if ye be sayin' 'no' ta her pleas, <CHARNAME>. */
COPY_TRANS NALIA 2


// CORAN AND THE WOLFWERES
I_C_T C6CORAN 7 LK#YesCoran
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @261 /* A lady gettin' Coran into trouble? Why does this be seemin' so familiar? */
END


// JAN'S UNCLE
I_C_T GERHAR 17 LK#YesGer
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @262 /* This one is about as sane as that Cyric worshipin' gnome... */
  == GERHAR @263 /* I resemble that remark, dwarf! */
END


// FIGHTING TOLGEIRAS
I_C_T TOLGER2 1 LK#YesTolg
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @264 /* Ah, finally we gets ta give these Cowlies what they be deservin'! I'm goin' ta enjoy this one! */
  == TOLGER2 @265 /* Face the wrath of the full might of the Cowled Wizards of Amn! */
END

I_C_T TOLGER2 3 LK#YesTolg2
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @264 /* Ah, finally we gets ta give these Cowlies what they be deservin'! I'm goin' ta enjoy this one! */
  == TOLGER2 @265 /* Face the wrath of the full might of the Cowled Wizards of Amn! */
END

I_C_T TOLGER2 4 LK#YesTolg3
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @264 /* Ah, finally we gets ta give these Cowlies what they be deservin'! I'm goin' ta enjoy this one! */
  == TOLGER2 @265 /* Face the wrath of the full might of the Cowled Wizards of Amn! */
END

I_C_T TOLGER2 5 LK#YesTolg4
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @264 /* Ah, finally we gets ta give these Cowlies what they be deservin'! I'm goin' ta enjoy this one! */
  == TOLGER2 @265 /* Face the wrath of the full might of the Cowled Wizards of Amn! */
END


// TALKING TO THE DRUGGIE GUARD IN THE GATES DISTRICT
I_C_T AELOTUS 4 LK#YesToDrugs // ahaha. *juvenile*
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @266 /* What a foul city this truly is, for the guards- the men who are supposed ta protect the people o' the city- ta be dealin' with such shady characters over such vile goods. I will follow ye anywhere ye go and fer as long as ye need me, <CHARNAME>, but I do hope our travels take us away from Athkatla soon. */
  == AELOTUS @267 /* Heh heh heh... */
END


// FINDING TIAX
I_C_T PPTIAX 1 LK#YesTiax
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @268 /* Yer even more mad than ye was before, gnome. Tell me, Strifeleader, where is yer god now? Why hasn't he protected his 'chosen'? */
  == PPTIAX @269 /* The great lord Cyric will intervene soon enough, mortal! He will give Tiax the divine power to destroy these imbeciles who claim to imprison Tiax! Tiax will reign supreme! */
END


// FIGHTING IRENICUS IN SPELLHOLD
I_C_T PPIRENI2 35 LK#YesIren
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @270 /* Ye blasted spellslinger! What gives ye the right ta do this ta <CHARNAME> and Imoen? What gives ye the right ta ruin peoples lives like ye have done? Who the hell do ye think ye are?! */
END


// DELON WANTS YOU!
I_C_T DELON 15 LK#YesDelon
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @271 /* We cannae give promises ta hopeful young lads like this one, only ta not fulfill them! Come, <CHARNAME! Let us go ta this Imnesvale right away! */
  == DELON @272 /* T-thank you. I just hope you g-get there in time... */
END


// In Hell
I_C_T PLAYER1 25 LK#Yeslick_Hell
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @273 /* What... what is all this? Fire and brimstone as far as the eye can see. I knew me time was comin' up, but this cannae be right. Is this me punishment fer what I did ta Rieltar... ? No, it cannae be. <CHARNAME>, I think somethin' must've pulled us down here fer a reason... our job isn't done just yet. */
END


// Irenicus in Hell
I_C_T HELLJON 7 LK#Yeslick_Iren
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @274 /* Ye know what?  Ye're all talk, Irenicus, and ye'll fall just like ye did in Suldanessellar! */
END

I_C_T HELLJON 8 LK#Yeslick_Iren1
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @274 /* Ye know what?  Ye're all talk, Irenicus, and ye'll fall just like ye did in Suldanessellar! */
END

I_C_T HELLJON 9 LK#Yeslick_Iren2
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @274 /* Ye know what?  Ye're all talk, Irenicus, and ye'll fall just like ye did in Suldanessellar! */
END

I_C_T HELLJON 10 LK#Yeslick_Iren3
  == LK#YESJ IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @274 /* Ye know what?  Ye're all talk, Irenicus, and ye'll fall just like ye did in Suldanessellar! */
END


// Tree of Life
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("lk#yeslk") InMyArea("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID) Global("LK#YeslickTreeofLife","GLOBAL",0)~
EXTERN PLAYER1 LK#YeslickToL
END


CHAIN PLAYER1 LK#YeslickToL
@275 /* Weapon in hand and ready for battle, Yeslick Orothiar stands before you. The aged dwarf has proven to be a valuable ally and a steadfast friend since you first met in those damp, dark caverns of the Sword Coast. With the situation at hand escalating beyond your control, however, perhaps you should convince him to stay behind. */
END
  ++ @276 /* Yeslick, I am grateful for your help thus far and I am proud to call you a friend. Things are starting to get a bit out of hand, though, and I think it would be best if you stayed behind. I could not live with myself if something were to happen to you in the battle ahead. */ DO ~SetGlobal("LK#YeslickTreeofLife","GLOBAL",1)~ EXTERN LK#YESJ LK#YeslickToL_1
  ++ @277 /* Finally, Irenicus has nowhere left to run and I will finally be able to make him pay for the hell he's put me through. Yeslick, I want you to stay behind and let me deal with this. This is my fight. */ DO ~SetGlobal("LK#YeslickTreeofLife","GLOBAL",1)~ EXTERN LK#YESJ LK#YeslickToL_1
  ++ @278 /* The fight ahead is going to be too intense for an old man like yourself. I cannot have any liabilities on the battlefield anymore; go home. */ DO ~SetGlobal("LK#YeslickTreeofLife","GLOBAL",1)~ EXTERN LK#YESJ LK#YeslickToL_2

APPEND LK#YESJ

IF ~~ LK#YeslickToL_1
  SAY @279 /* Ye must be mad, <PRO_BOYGIRL>! Do ye really think ye can take on Irenicus without me? Ha! */
  = @280 /* I'll be right besides ye the whole time, just like I always have been. Besides, after all this runnin' around he's made us do, I want a piece o' him meself! */
  COPY_TRANS PLAYER1 33
END

IF ~~ LK#YeslickToL_2
  SAY @281 /* Harsh words, <PRO_GIRLBOY>, and not one I would be expectin' ta hear from ye after all we've been through together. I would have liked ta think ye thought better o' me after what I been through ta prove meself loyal and true. */
  IF ~~ DO ~SetGlobal("LK#YeslickJoined","GLOBAL",0) DropInventory() LeaveParty() EscapeArea()~ + LK#YeslickToL_3
END

IF ~~ LK#YeslickToL_3
  SAY @282 /* Iffin' ye don't need me aid no longer and if ye really think o' me as just an old hinderance, then donnae let me slow ye down. I may as well start walkin'; Beregost is a long ways away from this ruddy fairy town. */
  COPY_TRANS PLAYER1 33
END


// Area interjections
// INSIDE THE DEMON PLANE IN THE PLANAR SPHERE
IF ~Global("LK#YeslickPlane","GLOBAL",2)~ LK#YesPlane
  SAY @283 /* By Clageddin's 'ammer... what is this place? Quickly, <CHARNAME>; lets find what we be needin' and leave this foul realm! */
  IF ~~ DO ~IncrementGlobal("LK#YeslickPlane","GLOBAL",1)~ EXIT
END
  
// AFTER FIRKRAAG IS DEAD
IF ~Global("LK#YeslickFirkraag","GLOBAL",1)~ LK#YesFirkraag
  SAY @284 /* Nothin' more than a big wyvern, he was, and I killed me plenty o' them in me life. Ye did good, <PRO_GIRLBOY>! Ye slew the dragon and saved ol' Windspear's land, jus' like some kind o' hero a bard sings about in the taverns. Let us hope we'll be givin' the bards more material in the days ta come, eh? */
  IF ~~ DO ~IncrementGlobal("LK#YeslickFirkraag","GLOBAL",1)~ EXIT
END

// ADALON'S MISSION
IF ~Global("LK#YeslickAdalon","GLOBAL",2)~ LK#YesAdalon
  SAY @285 /* We're ta sneak into the drow city? Bah! Subtlety isn't one o' me strong points, <CHARNAME>. I donnae like sneakin' around when our problems could jus' as easily be solved by bashin' some drow heads in. */
  IF ~~ DO ~IncrementGlobal("LK#YeslickAdalon","GLOBAL",1)~ EXIT
END

// LETTING SOLAUFEIN GO
IF ~Global("LK#YeslickSolaufein","GLOBAL",1)~ LK#YesAdalon
  SAY @286 /* As much as I despise the dark elves, I think we did the right thing lettin' this one go. He seemed... different. Mebbe he'll do some good with the chance we gave him. */
  IF ~~ DO ~IncrementGlobal("LK#YeslickSolaufein","GLOBAL",1)~ EXIT
END  
  

// BRINGING GOOD NEWS TO THE HIDDEN DURING JAN'S QUEST

IF ~Global("LK#YeslickHidden","GLOBAL",2)~ LK#YesAdalon
  SAY @287 /* A mindflayer, was he? Foul creatures... it is strange that he would be helpin' us. */
  IF ~~ DO ~IncrementGlobal("LK#YeslickHidden","GLOBAL",1)~ EXIT
END
END