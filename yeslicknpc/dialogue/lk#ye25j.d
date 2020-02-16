BEGIN LK#YE25J

//FRIENDSHIP 1 (TOB): There's always trouble

CHAIN IF ~Global("LK#YeslickToBTalks","GLOBAL",2)~ THEN LK#YE25J FRIEND-TOB-1-00
@0 /* Ye know, <CHARNAME>, when I met ye back in Amn, with them bruises an' cuts an' all... I thought ye must'a pulled through some rough times then, but I see things ain't gettin' any easier fer ye even now! How're ye hangin', me <GIRLBOY>? */
END
IF~~THEN REPLY @1 /* Could be better, could be worse. Thank you for your concern, though. */ EXTERN LK#YE25J FRIEND-TOB-1-01
IF~~THEN REPLY @2 /* I'm fine, Yeslick, really. I thought things would be harder, but I think I can cope with everything that's happening. */ EXTERN LK#YE25J FRIEND-TOB-1-02
IF~~THEN REPLY @3 /* Poorly, so please don't make things worse, Yeslick. Things are rough enough without your pointless jabbering. */ EXTERN LK#YE25J FRIEND-TOB-1-03

CHAIN LK#YE25J FRIEND-TOB-1-01
@4 /* Heh, there's no need to thank me, but ye're more than welcome. */
EXTERN LK#YE25J FRIEND-TOB-1-04

CHAIN LK#YE25J FRIEND-TOB-1-02
@5 /* Hoi, that be a good thing, <PRO_GIRLBOY>. Surely Gorion has trained ye well. */
EXTERN LK#YE25J FRIEND-TOB-1-04

CHAIN LK#YE25J FRIEND-TOB-1-04
@6 /* When I met ye, all the way back in the Orothiar mines, me first thought was: "Tha' <PRO_GIRLBOY> surely knows how to get <PRO_HIMHER>self in some damn serious trouble," but now? That be an understatement. Ye always know how to get yerself 'neath a fallin' hammer! */
==KORGA25J IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @7 /* Or an axe, har har har! */
==LK#YE25J @8 /* Don't mistake what I'm meanin', <CHARNAME>, all the bleedin' wounds an' broken ribs ain't a new experience fer me, but I just never thought one such as ye would throw yourself into the Hells. */
END
IF~~THEN REPLY @9 /* You don't sound so convinced about having no second thoughts, Yeslick. */ EXTERN LK#YE25J FRIEND-TOB-1-05
IF~~THEN REPLY @10 /* Believe me, I wish things were different. I'd give anything for a pint of ale and some peace, but this life continues to give me nothing but hell. */ EXTERN LK#YE25J FRIEND-TOB-1-06
IF~~THEN REPLY @11 /* Don't tell me you've gotten cold feet and want to leave. */ EXTERN LK#YE25J FRIEND-TOB-1-05
IF~~THEN REPLY @12 /* We don't have time to discuss things that can't be changed at this point, Yeslick. Let's just put it behind us. */ EXTERN LK#YE25J FRIEND-TOB-1-03

CHAIN LK#YE25J FRIEND-TOB-1-05
@13 /* Heh... never, me <PRO_GIRLBOY>, never in a thousand years. I be merely... concerned. Yer life has been anythin' but kind to you thus far. */
EXTERN LK#YE25J FRIEND-TOB-1-07

CHAIN LK#YE25J FRIEND-TOB-1-06
@14 /* Har, if 'twere a barrel of Hellfire Wine... that would do just as well. Instead, ye've only the hell and fire, an' none of the wine. */
EXTERN LK#YE25J FRIEND-TOB-1-07

CHAIN LK#YE25J FRIEND-TOB-1-07
@15 /* Rest assured, <CHARNAME>, be it a dozen chargin' giants or brood of dragons in yer way, I'll stand by ye regardless. If Irenicus an' his undead sister couldn't bring ye down, then we've still hope against the greater beasts ahead, eh? Ye should know that. */
END
IF~~THEN REPLY @16 /* Your loyalty is appreciated, my friend. I'm glad to have your confidence. */ EXTERN LK#YE25J FRIEND-TOB-1-08
IF~~THEN REPLY @17 /* Don't get too sentimental, old man. It gets on my nerves. */ EXTERN LK#YE25J FRIEND-TOB-1-03
IF~~THEN REPLY @18 /* I already know, Yeslick. You've never let me down. */ EXTERN LK#YE25J FRIEND-TOB-1-09
IF~~THEN REPLY @19 /* Well, I suppose that's reassuring... I'll need all the support I can get for the trials ahead of me. */ EXTERN LK#YE25J FRIEND-TOB-1-10

CHAIN LK#YE25J FRIEND-TOB-1-08
@20 /* Aye, that be good, then... come, <PRO_GIRLBOY>! let's give 'em beasties, whether they be demon, lich or worse, a show of what we're made of, eh? */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",3)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-1-09
@21 /* Then ye know me well. No more need be said, then... come, <PRO_GIRLBOY>! let's give 'em beasties, whether they be demon, lich or worse, a show of what we're made of, eh? */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",3)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-1-10
@22 /* Ye've all the aid I can give ye, if I haven't made it clear... now come, <PRO_GIRLBOY>! let's give 'em beasties, whether they be demon, lich or worse, a show of what we're made of, eh? */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",3)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-1-03
@23 /* Ye should lace yer words with a mite bit o' courtesy when speakin' with one who be willin' ter help ye, <CHARNAME>. Ah, but I won't leave ye now, <CHARNAME>. I'll keep me own thoughts to meself. */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",70)~ EXIT

//FRIENDSHIP 2 (TOB): Taerom / Thunder Hammer Smithy and all new items

CHAIN IF ~Global("LK#YeslickToBTalks","GLOBAL",5)~ THEN LK#YE25J FRIEND-TOB-2-00
@24 /* Heh, I'd pay gold to see the look on ol' Taerom if he were to see us carryin' our armors and blades greater than anything that's e'er came outta his forge! */
END
IF~~THEN REPLY @25 /* You're still thinking about all those "smithy fellas", as you once referred to them as? */ EXTERN LK#YE25J FRIEND-TOB-2-01
IF~~THEN REPLY @26 /* Hah, we'd need at least ten tons of gold for him to acquire anything close to this quality of gear for us. */ EXTERN LK#YE25J FRIEND-TOB-2-02
IF~~THEN REPLY @27 /* We don't have time to waste on talking about that old man, Yeslick. */ EXTERN LK#YE25J FRIEND-TOB-2-03

CHAIN LK#YE25J FRIEND-TOB-2-01
@28 /* Aye, it's been a weighty moment, me bein' there... */
EXTERN LK#YE25J FRIEND-TOB-2-04

CHAIN LK#YE25J FRIEND-TOB-2-02
@29 /* Nay, <PRO_GIRLBOY>. For us? I'd reckon he'd knock it down to nine tons. */
EXTERN LK#YE25J FRIEND-TOB-2-04

CHAIN LK#YE25J FRIEND-TOB-2-04
@30 /* Say, does ye ever miss what we left behind, eh? Ye've come a long way from those ol' walls of Candlekeep, the shelter o' the Friendly Arm an' the peaceful shelter o' Beregost. Have ye ever stopped to think of the roads ye've treaded? */
END
IF~~THEN REPLY @31 /* I miss some things. Others, not so much. */ EXTERN LK#YE25J FRIEND-TOB-2-05
IF~~THEN REPLY @32 /* No, not particularly. I've got enough on my plate without dwelling on visions of the past. */ EXTERN LK#YE25J FRIEND-TOB-2-05
IF~~THEN REPLY @33 /* Yes, I do sometimes. Back in the Sword Coast, I felt at home. Here... I feel like I don't belong. */ EXTERN LK#YE25J FRIEND-TOB-2-05
IF~~THEN REPLY @34 /* I will never miss Candlekeep, Yeslick. Not after abandoning me when I needed them. I can never forgive them for that. */ EXTERN LK#YE25J FRIEND-TOB-2-05
IF~~THEN REPLY @35 /* That's none of your business. Actually, I'd rather we stopped talking altogether right now. */ EXTERN LK#YE25J FRIEND-TOB-2-03

CHAIN LK#YE25J FRIEND-TOB-2-05
@36 /* Mmm, I hear ye, <PRO_GIRLBOY>. I know the past is ne'er a simple matter. 'Tis strange, though, how diff'rently we see things when lookin' back now, eh? */
==LK#YE25J @37 /* Ah, ye've better things to do than to listen to this ol' bag of bones spoutin' his meanderin' philosophy. Hoi, 'tis better to just live in the moment an' keep our legs movin' before they grow too rusty an' frail to! */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",6)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-2-03
@38 /* Ah, have it yer way, <PRO_GIRLBOY>. Forget I mentioned anythin'. */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",70)~ EXIT

//FRIENDSHIP 3 (TOB): When <CHARNAME> hurt

CHAIN IF ~Global("LK#YeslickToBTalks","GLOBAL",8)~ THEN LK#YE25J FRIEND-TOB-3-00
@39 /* Hoi, that wound's lookin' mighty painful, <CHARNAME>. Ye should guard yer vulnerable spots more closely in the heat o' battle. C'mere, <PRO_GIRLBOY>. Ye're in need o' some healin' magic. */
END
IF~~THEN REPLY @40 /* I suppose you're right... ouch. */ EXTERN LK#YE25J FRIEND-TOB-3-01
IF~~THEN REPLY @41 /* Thank you, Yeslick. I suppose it's easy to forget I'm not undefeatable after winning so many battles. */ EXTERN LK#YE25J FRIEND-TOB-3-02
IF~~THEN REPLY @42 /* Fine, but just try and keep the talking to a minimum. Is that clear? */ EXTERN LK#YE25J FRIEND-TOB-3-03

CHAIN LK#YE25J FRIEND-TOB-3-01
@43 /* Aye, o' course I am. Ye'll live a longer life when ye listen to yer elders. */
EXTERN LK#YE25J FRIEND-TOB-3-04

CHAIN LK#YE25J FRIEND-TOB-3-02
@44 /* I think ye should think on that fer a while, and remember that ye ain't immortal just yet. */
EXTERN LK#YE25J FRIEND-TOB-3-04

CHAIN LK#YE25J FRIEND-TOB-3-04
@45 /* Ye may have fought yer way through many foes to be recked with, and won, <PRO_GIRLBOY>, but ye're still a mortal <PRO_RACE>, and ye still bleed. Perhaps that will no longer be true soon, but ye've still a few steps left ter take a'fore then, aye? */
END
IF~~THEN REPLY @46 /* I'm not about to be defeated, Yeslick, no matter how much stronger our foes become. Just a few more victories, and I'll be free of all this endless combat and suffering. */ EXTERN LK#YE25J FRIEND-TOB-3-05
IF~~THEN REPLY @47 /* Perhaps I have been a little too reckless lately. I don't try to get hurt, but we're fighting a higher caliber of enemy nowadays than we used to. */ EXTERN LK#YE25J FRIEND-TOB-3-06
IF~~THEN REPLY @48 /* I don't need to be lectured by you, Yeslick. You're just here to swing your hammer and heal wounds. */ EXTERN LK#YE25J FRIEND-TOB-3-03

CHAIN LK#YE25J FRIEND-TOB-3-05
@49 /* Calm yerself, <PRO_GIRLBOY>, stop to take a breath an' think. Ye've reason to want to be free o' yer troubles, but we need our heads clear to make it out alive, eh? */
EXTERN LK#YE25J FRIEND-TOB-3-07

CHAIN LK#YE25J FRIEND-TOB-3-06
@50 /* Aye, true enough. But all the more reason for us to keep our heads clear, eh? These be dark times fer us, most certainly. */
EXTERN LK#YE25J FRIEND-TOB-3-07

CHAIN LK#YE25J FRIEND-TOB-3-07
@51 /* Regardless, ye can count on this ol' dwarf to walk the road with ye up till the end. We'll make it to the end of this tale, and ye'll finally find the peace ye desire. */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",9)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-3-03
@52 /* Hmph. Ye should watch yer tone, <PRO_GIRLBOY>, when speakin' to the one who holds the bandages! Bah. */
DO ~SetGlobal("LK#YeslickToBTalks","GLOBAL",70)~ EXIT

//SARADUSH DESTROYED

CHAIN IF ~Global("LK#YeslickSaradush","GLOBAL",2)~ THEN LK#YE25J FRIEND-TOB-S-00
@53 /* I still think o' those poor souls crushed beneath the fallen walls o' Saradush. Me prayers to Clangeddin fer their souls be with them. */
END
IF~~THEN REPLY @54 /* We did all we could, Yeslick. As much as I wish we could save everyone, it's... not possible. */ EXTERN LK#YE25J FRIEND-TOB-S-01
IF~~THEN REPLY @55 /* I can hardly forget them either. The memories will weigh on my mind for as long as I live. */ EXTERN LK#YE25J FRIEND-TOB-S-02
IF~~THEN REPLY @56 /* The weak fall, and the strong survive. I do not mourn the deaths of those who did not have the will to escape that doomed place. */ EXTERN LK#YE25J FRIEND-TOB-S-03

CHAIN LK#YE25J FRIEND-TOB-S-01
@57 /* Aye, I know that, but knowin' makes it no easier t' stand. */
EXTERN LK#YE25J FRIEND-TOB-S-04

CHAIN LK#YE25J FRIEND-TOB-S-02
@58 /* 'Tis the same with me, <PRO_GIRLBOY>. We can do naught but mourn... */
EXTERN LK#YE25J FRIEND-TOB-S-04

CHAIN LK#YE25J FRIEND-TOB-S-04
@59 /* I ain't a stranger to tragedies of all kinds, <PRO_GIRLBOY>. I've seen comrades an' innocents both fall by the dozens. But to imagine such slaughter... that fiend, Yaga-Shura's actions were unforgivable. May his soul rot in the Abyss fer what he's done. */
END
IF~~THEN REPLY @60 /* We've done a great deed by slaying him. */ EXTERN LK#YE25J FRIEND-TOB-S-05
IF~~THEN REPLY @61 /* I'm sure he will be... what's left of him, anyway. */ EXTERN LK#YE25J FRIEND-TOB-S-05
IF~~THEN REPLY @62 /* Just stow it, Yeslick. I don't care about what happens to the dead. */ EXTERN LK#YE25J FRIEND-TOB-S-03

CHAIN LK#YE25J FRIEND-TOB-S-05
@63 /* Aye, but killin' won't bring the dead back, or give peace to their families... we can change nothin'. That is why I pray. */
END
IF~~THEN REPLY @64 /* The living need your prayers as well, Yeslick. I'd feel reassured if you prayed for me. */ EXTERN LK#YE25J FRIEND-TOB-S-06
IF~~THEN REPLY @65 /* I understand. I hope that your prayers will ease your heart from your grief as well, Yeslick. */ EXTERN LK#YE25J FRIEND-TOB-S-07
IF~~THEN REPLY @66 /* Whatever. Just don't make me waste my time praying with you. */ EXTERN LK#YE25J FRIEND-TOB-S-03

CHAIN LK#YE25J FRIEND-TOB-S-06
@67 /* Aye, I will, <PRO_GIRLBOY>. Rest assured, I will... */
DO ~SetGlobal("LK#YeslickSaradush","GLOBAL",3)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-S-07
@68 /* I doubt me prayers will be enough... but 'tis the least I can do fer those who met such an undeserved end. */
DO ~SetGlobal("LK#YeslickSaradush","GLOBAL",3)~ EXIT

CHAIN LK#YE25J FRIEND-TOB-S-03
@69 /* Yer heart be as cold an' hard as stone, <CHARNAME>. I won't mention this to ye again. */
DO ~SetGlobal("LK#YeslickSaradush","GLOBAL",3)~ EXIT


//VOLO

EXTEND_BOTTOM SARVOLO 9 #4 
+ ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ + @70 /* Tell me about Yeslick. */ + LK#YeslickBio 
END 

CHAIN SARVOLO LK#YeslickBio
@71 /* A true paragon of dwarven faith and battle prowess, the venerable Yeslick of Clan Orothiar, once a prisoner of the Iron Throne, now serves dutifully at <CHARNAME>'s side, never failing to bestow his wisdom and healing whenever <PRO_HESHE> is in need. */
== LK#YE25J
@72 /* Heh, 'twould seem that I shall be forever known as yer friend an' aide. Aye, fair enough, tale-spinner... this ol' dwarf can hardly ask fer more. */
EXTERN SARVOLO 9 

// INTERJECTIONS

INTERJECT_COPY_TRANS SARWAI01 0 LK#YE25JWaitressTOB
== LK#YE25J IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN 
@73 /* By Clangeddin's axes, these young'uns should be shamed ter call themselves as men! */
END 

INTERJECT_COPY_TRANS FINSOL01 27 LK#YE25JSolarTOB
== LK#YE25J IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN 
@74 /* Aye, a difficult decision indeed... but ye've come this far, and I think ye know your path without me interference any longer, eh? Deep inside, ye knows what's best for ye, I know. */
END

INTERJECT_COPY_TRANS HGNYA01 1 LK#YE25JNyaTOB
== LK#YE25J IF ~InParty("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN 
@75 /* This lass's mind be surely addled. But her power is still great, I can tell. 'Ware, <CHARNAME>... such folk be the most dangerous of 'em all. */
END