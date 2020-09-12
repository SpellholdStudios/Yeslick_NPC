//----------------------------------------------
// Yeslick Banters
//----------------------------------------------
BEGIN BLK#YES

// Aerie
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickAerie","GLOBAL",0)~ THEN BAERIE LK#YeslickAerie_1
@0 /* Oh, Yeslick... you have so many scars! Wh-what happened? */
DO ~SetGlobal("LK#YeslickAerie","GLOBAL",1)~
== BLK#YES @1 /* Time happened, lass. Any warrior is goin' ta collect a good number o'em. Well, maybe not any warrior, but certainly the good ones! */
== BAERIE @2 /* Th-they don't bother you...? */
== BLK#YES @3 /* Not at all. Each one has a story ta tell, ye see. This one 'ere was given ta me from me first battle with a wyvern. This one--one o' me favorites--was during the battle against Sarevok. */
== BAERIE @4 /* I had never thought about them that way... I didn't think they could be so interesting. I usually just heal them up, and never give them a second thought. */
== BLK#YES @5 /* Many o' these scars I'm grateful ta have gained; and when the Rock o' Battle calls me name, Aerie, I'll be able ta look back on me scars and be proud! */
EXIT

// Aerie 2
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickAerie","GLOBAL",1)~ THEN BLK#YES LK#YeslickAerie_1
@6 /* Prayin', Aerie? */
DO ~SetGlobal("LK#YeslickAerie","GLOBAL",2)~
== BAERIE @7 /* Oh! Um, yes... actually, I am. Is that a problem? Sh-should I stop? */
== BLK#YES @8 /* Oh, no, Aerie! Don't let this ol' dwarf stop ye! Pray away! */
= @9 /* I must say, though, lass, that I'm impressed by ye faith. It's unusual ta see a younglin' like yerself have such a strong connection to their deity. */
== BAERIE @10 /* Th-thank you... your words are too kind. I only do what Baervan deserves. */
== BLK#YES @11 /* I'm sure he's proud of ye for it, lass. But remember! Never, ever lose that faith. */
== BAERIE @12 /* I won't... I will remember, Yeslick. Don't worry. */
EXIT

// Anomen 1
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("AnomenIsKnight","GLOBAL",0)
Global("LK#YeslickAnomen","GLOBAL",0)~ THEN BLK#YES LK#YeslickAnomen_1
@13 /* Ho, young Anomen! Ye fight well on the battlefield fer one o' so few years! */
DO ~SetGlobal("LK#YeslickAnomen","GLOBAL",1)~
== BANOMEN @14 /* Thank you, master dwarf. I am made glad to see my battle prowess recognized. */
== BLK#YES @15 /* Aye, it's 'ard not ta see it. Ye say yer only a squire, though? */
== BANOMEN @16 /* ndeed. I seek membership of the Order of the Most Radiant Heart. Hopefully they will acknowledge my skill as you do. */
== BLK#YES @17 /* I'm sure ye'll be accepted, lad, assumin' they 'ave any sense ta 'em at all. */
== BANOMEN @18 /* Is that distaste I detect in your tone, my good dwarf? */
== BLK#YES @19 /* Ach... ye need not worry 'bout it, lad. */
EXIT

// Anomen 2
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("AnomenIsKnight","GLOBAL",0)
Global("LK#YeslickAnomen","GLOBAL",1)~ THEN BANOMEN LK#YeslickAnomen_2
@20 /* I must say, dwarf, that I hold a great deal of respect for you. You have witnessed much in your life, and surely this renders your judgment true and unclouded. */
DO ~SetGlobal("LK#YeslickAnomen","GLOBAL",2)~
== BLK#YES @21 /* 'Seen much in me life', 'ave I? Ho ho! Why don't ye just come out an' say it! I'm an ol' dwarf, fer sure! */
== BANOMEN @22 /* That was not what I meant at all! Surely you could not have taken an insult out of such praise. */
== BLK#YES @23 /* No offense taken, lad! Quite the opposite; I thank ye fer yer kind words. */
== BANOMEN @24 /* Ah, I see... you are far too humble, Sir Yeslick. Undoubtedly you are a recognized force of good throughout the sword coast. */
== BLK#YES @25 /* Nah, not really, lad. */
== BANOMEN @26 /* No? Then... then do you not lose your determination? I know that I would find it most galling if my efforts in the service of justice were not recognized. */
== BLK#YES @27 /* Not at all. I do what I feel must be done, nothin' more. If the Rock O' Battle agrees with me decisions, then that's enough fer me. */
EXIT

// Anomen LG 1
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",LAWFUL_GOOD)
Global("LK#YeslickAnomenLG","GLOBAL",0)~ THEN BANOMEN LK#YeslickAnomenLG_1
@28 /* My dwarven friend, your courage and zeal matches that of any of my compatriots in the Order. Sometimes I wonder why they must be so selective in who they admit to our ranks, though I suppose my superiors have their reasons. */
DO ~SetGlobal("LK#YeslickAnomenLG","GLOBAL",1)~
== BLK#YES @29 /* Yer too kind, Sir Anomen. Either way, though, I donnae suppose the Order would be fer me. */
== BANOMEN @30 /* But you believe in virtue and order as much as I, do you not? */
== BLK#YES @31 /* Well, I think yer Order is all fine and dandy, me first impressions aside. But even so, I think they be puttin' too much value in the respect o' the Amnish people. Praisin' the gods come first, lad. */
= @32 /* I guess what I'm tryin' ta be sayin' is that I'm more of a temple cleric than one o' yer vigilantes. */
== BANOMEN @33 /* Vigilantes? I am suprised by your choice of words, master dwarf--but I'll not press the issue further. */
== BLK#YES @34 /* Ye've grown much in a short time, lad. It's done ye well. */
EXIT

// Anomen LG 2
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",LAWFUL_GOOD)
Global("LK#YeslickAnomenLG","GLOBAL",1)~ THEN BLK#YES LK#YeslickAnomenLG_2
@35 /* What ails ye, Anomen? Somethin' botherin' ye? */
DO ~SetGlobal("LK#YeslickAnomenLG","GLOBAL",2)~
== BANOMEN @36 /* I was thinking of my sister. I cannot help but wonder if there was something that I could have done to save her. */
== BLK#YES @37 /* Ye need not dwell on it, lad. We all lose people we hold dear durin' our life. If I had dwelled on losin' me clan, I woulda never met-- */
== BANOMEN @38 /* Forgive me, master dwarf, but I am not sure you dwarves see family in the same light as we do. */
= @39 /* Moira... she would have loved this sky Helm has blessed us with to<DAYNIGHT>. */
== BLK#YES @40 /* Don't worry, lad, it'll get easier with time. */
EXIT

// Anomen CN 1
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("LK#YeslickAnomenCN","GLOBAL",0)~ THEN BLK#YES LK#YeslickAnomenCN_1
@41 /* Anomen, I've been meanin' ta speak with ye... */
DO ~SetGlobal("LK#YeslickAnomenCN","GLOBAL",1)~
== BANOMEN @42 /* About what, dwarf? Come to mock me? To renew the pain of my failures? I'm not interested in hearing your lectures. */
== BLK#YES @43 /* Ye misunderstand me, lad. I've come ta speak with ye about yer faith. */
== BANOMEN @44 /* What of my faith, Alaghar? Come to deride that as well, I suppose? */
== BLK#YES @45 /* Nay, and stop accusin' me o' otherwise! Anomen, just because ye didn't get into yer Order donnae mean yer Helm thinks any less o' ye! Ye've gotten too caught up with letting loose yer rage in recent battles. That cannae be good for yer soul. */
== BANOMEN @46 /* Bah! Am I hearing right? A dwarf is trying to tutor me in the workings of the soul? I'll have none of this! */
== BLK#YES @47 /* (sigh) At least I cannae say I dinnae try... */
EXIT

// Anomen CN 2
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
Alignment("Anomen",CHAOTIC_NEUTRAL)
// After you've met Cor
Global("LK#YeslickAnomenCN","GLOBAL",1)~ THEN BLK#YES LK#YeslickAnomenCN_2
@48 /* "I couldn't help but 'ear ye shoutin' the name o' yer sister in that last bout, Anomen. */
DO ~SetGlobal("LK#YeslickAnomenCN","GLOBAL",2)~
== BANOMEN @49 /* As you tainted my ears with your dwarven filth, yes. What of it? */
== BLK#YES @50 /* Anomen! I'll not be spoken to that way! */
= @51 /* What's wrong with ye?! Before the Order turned ye down, ye never spoke like this! Ye weren't nothin' like those other frilly, racist knights! Do you really think yer sister would want ye talkin' like this? */
== BANOMEN @52 /* Do not assume what my sister would or would not want me doing, dwarf! The next time you sully her sweet name by so much as speaking it, I will strike you down where you stand! */
== BLK#YES @53 /* Donnae expect me to hold back, younglin'. Because I won't. */
EXIT

// Cernd 1
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickCernd","GLOBAL",0)~ THEN BLK#YES LK#YeslickCernd_1
@54 /* Ye know, Cernd, I think I know what ye druids speak o' when they say they have a 'connection with nature'. */
DO ~SetGlobal("LK#YeslickCernd","GLOBAL",1)~
== BCERND @55 /* Is that right, my dwarven friend? Please, do tell. */
== BLK#YES @56 /* Well, me and me clan would dig in the Cloakwood mines for hours upon hours, ye see. When I was just a young lad, it was a rough job. */
= @57 /* As I grew older, though, I came to appreciate me surroundin's. It wasn't no man-made contraption I be dependin' on in the mines, it was the earth itself. */
== BCERND @58 /* Like the mole, you were dependant on your natural surroundings as you digged deeper and deeper into the very earth. */
= @59 /* I am glad you were able to experience the wonders of nature like that, my friend. Too few people outside of any druid grove is able to see the greatness in such things. */
== BLK#YES @60 /* Oh, aye, me too; especially when we be hittin' any iron veins! */
EXIT

// Cernd 2
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBabyTalk","GLOBAL",1)
Global("LK#YeslickCernd","GLOBAL",1)~ THEN BLK#YES LK#YeslickCernd_2
@61 /* Cernd, are ye sure it be wise to leave yer son in the grove like ye did? */
DO ~SetGlobal("LK#YeslickCernd","GLOBAL",2)~
== BCERND @62 /* I trust the druids there with my life, and likewise I should trust them with the life of my son. */
== BLK#YES @63 /* But what if somethin' happen ta them--what o' yer son, then? Ye cannae be protectin' 'em if yer off travelin' with <CHARNAME>. */
== BCERND @64 /* The mother wolf allows her pack to assist in the raising her pups; should I not allow kindred druids to raise my son? */
== BLK#YES @65 /* But Cernd, ye ain't no mother, yer a father! Fathers are supposed to be protectin' their kin, not leavin' em at no bluddae grove! */
== BCERND @66 /* As much as I respect your opinion, Yeslick, I do think you are being a tad paranoid. I am positive that he will be safe where he is. In the sanctuary of that grove, nothing can befall my son. */
EXIT

// Edwin 1
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickEdwin","GLOBAL",0)~ THEN BEDWIN LK#YeslickEdwin_1
@67 /* I see you yet live, dwarf. Fate has been too kind. (Imagine that...) */
DO ~SetGlobal("LK#YeslickEdwin","GLOBAL",1)~
== BLK#YES @68 /* Aye, and I see yer hands are just as silky smooth as when we parted ways. Good ol' manual labour still too much fer ye? */
== BEDWIN @69 /* I assure you, small one, that I have accomplished more between the time of our parting and now then you shall do in your entirely-too-long life. (Perhaps his age will finally catch up to him, and I will be spared the messy task of sending him wherever he and his barbaric fellows go in the afterlife... assuming they have one.) */
== BLK#YES @70 /* That may well be, mageling, but I still cannae help but think ye would do well ta take a trip over ta yonder mines and get yer hands dirty. */
== BEDWIN @71 /* You are quite obviously delusional, dwarf. In Thay, those of my stature own slaves for such suicidal labour. I suggest you cease your inane attempt to lure me into your bloody little dwarven hellholes, because frankly, you are beginning to bore me. */
== BLK#YES @72 /* Have it yer way, then, Thayvian. */
EXIT

// Edwin 2
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickEdwin","GLOBAL",1)~ THEN BLK#YES LK#YeslickEdwin_2
@73 /* Edwin! I cannae help but be wonderin' if the aim o' yer spellslingin' could be improved. */
DO ~SetGlobal("LK#YeslickEdwin","GLOBAL",2)~
== BEDWIN @74 /* My aim is flawless. It is your diminutive simian perception that is at fault. */
== BLK#YES @75 /* So ye say, mageling, but I think yer Magic Missles an' what not are gettin' a wee bit too close ta me backside for me likin'. */
== BEDWIN @76 /* (Has this fool never learned to dodge?) Are you suggesting my aim is directed towards your... hindquarters? Spare me the nauseating thought. */
== BLK#YES @77 /* Err... no, as a matter o' fact, I'm not. That wouldn't be the case, though, would it? */
== BEDWIN @78 /* Of course not. Even thinking of such a low act is an insult to the greatness that is Edwin Odesseiron. (I almost pity the fool...) */
EXIT

// Haerdalis 1
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickHaerdalis","GLOBAL",0)~ THEN BLK#YES LK#YeslickHaerdalis_1
@79 /* Ye know, bard, I think ye and yer kin are just too much fer this ol' dwarf ta understand. */
DO ~SetGlobal("LK#YeslickHaerdalis","GLOBAL",1)~
== BHAERDA @80 /* Whatever do you mean, dear owl? Is it my demonic heritage that confuses you so? */
== BLK#YES @81 /* Nay, I quit tryin' ta figure out yer tieflin' kin long ago. What I donnae understand is yer Doom-folk. */
== BHAERDA @82 /* Ah, the Doomguard! We are a simple group that strives for a single goal. I cannot see how it could confuse anyone, especially one so wise as you, my good owl. */
== BLK#YES @83 /* Well, ye do. Why chase death so jovially, bard? */
== BHAERDA @84 /* Death is simply another part of life. As the good play ends, we must all take our bow; as one who serves his deity with such zeal, I would have thought you would have known and accepted this. */
== BLK#YES @85 /* The Rock O' Battle would be disappointed if I be givin' up the good fight simply ta 'take a bow'. Ye fight until all the fightin' be done. */
== BHAERDA @86 /* A noble goal, and one befitting a great warrior such as yourself. I am interested in seeing where life takes you next, my owl, for you are obviously going to be one of the great movers and shakers of this plane. */
== BLK#YES @87 /* I donnae 'bout that, bard... I'd rather just do what be best fer Clangeddin. And <CHARNAME>, too, o' course. */
== BHAERDA @88 /* Heh... indeed, my good owl. Indeed. */
EXIT

// Haerdalis 2
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickHaerdalis","GLOBAL",1)~ THEN BLK#YES LK#YeslickHaerdalis_1
@89 /* Bard... must ye bound everywhere like some kinda young pup? I... I ain't what I use ta be, ye know! I cannae... I cannae keep up with ye all the bloody time! */
DO ~SetGlobal("LK#YeslickHaerdalis","GLOBAL",2)~
== BHAERDA @90 /* Oh, but look around you, my dear owl! There is so much to do and so much to see, and yet we have such a short time with which see to it all! */
== BLK#YES @91 /* Why... are ye goin' somewhere? */
== BHAERDA @92 /* Nay, I have no plans of leaving <CHARNAME>'s company anytime soon. Nonetheless, we never know what will become of us each time we jump into the fray. Each scrimmage could be our last! */
== BLK#YES @93 /* Ach... I thought bards were supposed ta be *good* fer morale... */
EXIT



// Imoen 1
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickImoen","GLOBAL",0)~ THEN BLK#YES LK#YeslickImoen_1
@94 /* It is good ta be seein' ye again, lass. */
DO ~SetGlobal("LK#YeslickImoen","GLOBAL",1)~
== BIMOEN2 @95 /* Oh, Yeslick! It's so good to see you again, too! How have you been? */
== BLK#YES @96 /* I've been fine, lass. My age is startin' ta catch up ta me, but that don't mean I cannae help <CHARNAME>. */
== BIMOEN2 @97 /* Gettin' old has been rough, huh? Dulled your senses a bit, has it...? */
== BLK#YES @98 /* Eh? Oh, aye, it has... but that don't mean I cannae fight just as well! */
= @99 /* Eh...? Now where did me sandwich go...? */
== BIMOEN2 @100 /* Mmm... I sure was hungry. Well, I'll see you around, Yeslick. */
== BLK#YES @101 /* Hey, wait! You lil' thief, that sandwich was mine! We ol' folk have ta eat, too, ye know! */
EXIT

// Imoen 2
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickImoen","GLOBAL",1)~ THEN BIMOEN2 LK#YeslickImoen_2
@102 /* Yeslick... are you busy? I- */
DO ~SetGlobal("LK#YeslickImoen","GLOBAL",2)~
== BLK#YES @103 /* Aw, come now, lass! No need ta be sayin' anythin'; that argument we had was long ago. We've both been doin' some growin' since then. */
== BIMOEN2 @104 /* I still feel like I should apologize... taking your sandwhich really wasn't a very nice thing for me to have done. */
== BLK#YES @105 /* Think nothin' of it; it was a simple prank, and I just couldn't appreciate the humour in the situation. */
== BIMOEN2 @106 /* Hehe, okay then; as long as you're alright with everything... */
== BLK#YES @107 /* Of course, lass. Now, chin up and let's move on! */
== BIMOEN2 @108 /* (Now... I'll have to plan this one carefully... a lot more carefully than last time, anyway... maybe I should get <CHARNAME> to help or something... ah, pranking Yeslick still makes me laugh. He's so easy!) */
EXIT

// Imoen 3
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickImoen","GLOBAL",2)~ THEN BLK#YES LK#YeslickImoen_3
@109 /* Imoen, I want ye ta know that I've been watching ye. I see the concern on yer face, lassie; if ye ever need ta discuss what happened with that Irenicus bastard, I'm here. I hope ye know that. */
DO ~SetGlobal("LK#YeslickImoen","GLOBAL",3)~
== BIMOEN2 @110 /* I know, Yeslick... I just don't feel like talking about it, okay? Please... */
== BLK#YES @111 /* I know about yer nightmares...  but I'm not sure if the others do, yet. But they're getting more frequent, ain't they, lass? Are ye sure ye don't want ta talk? That bloody mage did some awful things ta ye... */
== BIMOEN2 @112 /* Just leave me alone, Yeslick! I can deal with it on my own, and I don't need some ol' dwarf sticking his nose in on things which don't concern him! */
== BLK#YES @113 /* If ye say so, young miss... keep it in mind, though. */
== BIMOEN2 @114 /* What?! */
== BLK#YES @115 /* Ye can't bottle things up forever. It'll eat at ye slowly, lass, until it finally drives ye mad. I've seen it happen in me long, long life... too many times. */
== BIMOEN2 @116 /* Leave me alone... please... */
EXIT

// Jaheira 1
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickJaheira","GLOBAL",0)~ THEN BLK#YES LK#YeslickJaheira_1
@117 /* Ye know, Jaheira, it really doesn't surprise me ta see ye here. Still by <CHARNAME>'s side, just as I would expect. */
DO ~SetGlobal("LK#YeslickJaheira","GLOBAL",1)~
== BJAHEIR @118 /* I made a promise to my dear friend Gorion, and I intend to see it through. Would you not do the same for an old friend of yours? */
== BLK#YES @119 /* Aye, if I had any friends o' mine left at all, I reckon I would do the same fer them. Still, did ye even 'ave the slightest idea of what you were gettin' yerself inta? */
== BJAHEIR @120 /* How could I have? You think too highly of me, dwarf, to have thought me capable of foreseeing this journey for what it has become. */
= @121 /* I do not take promises lightly... nor oaths. I would continue to abide by <CHARNAME>'s orders even if <PRO_HESHE> did not wish my presence here; <CHARNAME> has become a close friend, Yeslick... especially after Khalid's death and Imoen's capture. Situations such as this bring people together. */
== BLK#YES @122 /* Well said! Aye, somethin' tells me <CHARNAME>'s lucky ta be havin' comrades like us around. */
== BJAHEIR @123 /* Let us just hope <PRO_HESHE> makes use of our presence when we are needed. */
EXIT

// Jaheira 2
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickJaheira","GLOBAL",1)~ THEN BLK#YES LK#YeslickJaheira_2
@124 /* My condolences on yer loss, Jaheira; it is hard ta lose someone yer close to, especially as close as ye an' Khalid were. */
DO ~SetGlobal("LK#YeslickJaheira","GLOBAL",2)~
== BJAHEIR @125 /* While I appreciate the sentiment, Yeslick, I grow tired of this discussion. */
== BLK#YES @126 /* Iff'n I recall correctly, this is the first time I've broached the subject with ye, but if ye wish ta remain tight-lipped on the matter... */
== BJAHEIR @127 /* (sigh) No... no, Yeslick, it is not that. People are overly willing to offer false condolences, false sympathy... it becomes wearing after a while. */
== BLK#YES @128 /* Aye, that it does... my apologies then, miss Jaheira. If ye ever need ta talk, ye know where ta find me. */
== BJAHEIR @129 /* Thank you, Yeslick. */
EXIT

// Jan 1
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickJan","GLOBAL",0)~ THEN BJAN LK#YeslickJan_1
@130 /* A worshipper of Clangeddin, are you? */
DO ~SetGlobal("LK#YeslickJan","GLOBAL",1)~
== BLK#YES @131 /* Aye, that I am. Have a problem with it, gnome? */
== BJAN @132 /* Oh, no, not at all; Clangeddin is an alright fellow, I suppose. As a matter of fact, my great-great grandfather, Bingham J. Jansen, was the first gnomish Alaghor recorded in Faerun. He was a brave warrior, you see, who left the Jansen family to live with a dwarven clan in the outskirts of Tethyr. There was no animosity between the Jansens and-- */
== BLK#YES @133 /* I'm afraid yer wrong there, laddie. */
= @134 /* The first gnomish Alaghor was Belneiros Tallcrippler of Waterdeep. He lived all his life in the big city, at least three hundred or so years ago. After bein' kidnapped by a horde o' orcs and ogres and what have ye, Belneiros was rescued by a clan o' Alaghar. He was given a weapon and some armor blessed by Clangeddin, and helped destroy the horde. It was said that in the midst o' battle, Tallcrippler pledged himself to the mighty Rock O' Battle. As it were, he went on to form a group-- */
== BJAN @135 /* (By Uncle Scratchy's beard, does this guy ever stop talking?) */
EXIT

// Jan 2
CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickJan","GLOBAL",1)~ THEN BLK#YES LK#YeslickJan_2
@136 /* I see yer workin' on yet another one o' yer inventions, there, gnome. What is it that this one does? */
DO ~SetGlobal("LK#YeslickJan","GLOBAL",2)~
== BJAN @137 /* This here is my patented Jansen De-Aging Youthifier. It's one of my first true inventions from back in my youth, but between you and me it still has several bugs in it. */
== BLK#YES @138 /* Ye let little insects get in yer machine and mess it all up? I thought ye gnomes were more protective o' yer inventions than that. */
== BJAN @139 /* No, you old coot, not insects; bugs! Kinks! It doesn't work properly. */
== BLK#YES @140 /* Ah, now I understand... I think. */
== BJAN @141 /* It's supposed to bring back youth in old folk like you. I tried to test it on Great-Aunt Norma, but, well... that didn't turn out like planned. */
= @142 /* Why don't you test it out? You seem to be a rather good candidate, as you fill all the requirements; old, wrinkly and smelly, as it were. */
== BLK#YES @143 /* I'll not be yer test subject, Jansen! Keep that blasted thing away from me! Even if I did have faith in yer gadgets, agin' shouldn't be reversed like that. I've had me time to enjoy bein' young, and now I must be makin' use o' the wisdom that comes with old age. */
== BJAN @144 /* Suit yourself, old man, but don't come crying to me when your back gives out on the battlefield. Oh, I haven't seen an old fogey more stubborn than that one since Great-Uncle Oswald... though I think poor Norma's situation will keep him settled down for awhile. */
EXIT

// Keldorn 1
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickKeldorn","GLOBAL",0)~ THEN BLK#YES LK#YeslickKeldorn_1
@145 /* So, yer the Firecam fella I've heard so much about, eh? Hm... I didn't think yer Order had ol' folks like ye around. */
DO ~SetGlobal("LK#YeslickKeldorn","GLOBAL",1)~
== BKELDOR @146 /* I am a senior member of the Order of the Most Radiant Heart, true, but my faith and determination is as strong as the day I became a squire. */
== BLK#YES @147 /* So it's true, then. I apologize for bein' so blunt there, Sir Firecam, but I was just taken aback by the sight o' yer age. */
== BKELDOR @148 /* It's quite alright, master dwarf. If you would, though, call me Keldorn. If we are to be comrades-in-arms, we should not stick to ranks and titles and all of that nonsense. */
== BLK#YES @149 /* Ah, now yer talkin'! I think me and you will get along just fine. */
EXIT

// Keldorn 2
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickKeldorn","GLOBAL",1)~ THEN BKELDOR LK#YeslickKeldorn_2
@150 /* Are you alright, friend? You look concerned about something. */
DO ~SetGlobal("LK#YeslickKeldorn","GLOBAL",2)~
== BLK#YES @151 /* Ah, it's nothin', Keldorn. I just cannae believe the shape o' this city. Thieves and criminals everywhere... it makes me wonder what the world will be lookin' like after I'm gone. */
== BKELDOR @152 /* As much as the Order tries it's best, the crime rate in our fair city steadily increases. I, too, fear what Amn will look like in the near future. */
== BLK#YES @153 /* I suppose there be no sense in worryin' about it; there be no one thing that we could do to be puttin' a stop ta it. */
== BKELDOR @154 /* It is true that there might not be a single physical force that is responsible for the state of the world, but in the end I believe it all comes down to mankind itself. A lack of faith will, in the end, destroy any morals one might have. Without the gods, we are no worse than the savages of Maztica. */
EXIT

// Korgan 1
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickKorgan","GLOBAL",0)~ THEN BKORGAN LK#YeslickKorgan_1
@155 /* Watch where yer goin', ye bloody oaf! Ye nearly knocked me flat on me arse! */
DO ~SetGlobal("LK#YeslickKorgan","GLOBAL",1)~
== BLK#YES @156 /* I meant ye no harm, mercenary; no need fer ye ta hurl any insults. */
== BKORGAN @157 /* Yeah, well, that's what I'll be tellin' when ye finds me axe in yer gullet if ye do that again. */
== BLK#YES @158 /* Is there really a need fer yer threats? It was just an accident, as ye could plain well see. */
== BKORGAN @159 /* An accident, ye say? How about I "accidentally" cut ye open in yer sleep, ye useless pile o' muck! */
== BLK#YES @160 /* Dammit! Why do all ye sellsword types act the same? I'll have no more o' this! */
EXIT

// Korgan 2
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickKorgan","GLOBAL",1)~ THEN BLK#YES LK#YeslickKorgan_2
@161 /* By Clangeddin's 'ammer, what is that smell?! */
DO ~SetGlobal("LK#YeslickKorgan","GLOBAL",2)~
== BKORGAN @162 /* Eh? And just why are ye lookin' at me, Alaghar? */
= @163 /* Iffin' it be botherin' ye so much, why don't I just cut yer nose off with me axe? */
== BLK#YES @164 /* I'd almost rather lose me nose than smell yer ugly hide. Just stand as far away from me as ye can, and ye can still yer axe. */
== BKORGAN @165 /* What a shame; I was gettin' a little excited at the thought of cuttin' ye. */
EXIT

// Mazzy 1
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickMazzy","GLOBAL",0)~ THEN BLK#YES LK#YeslickMazzy_1
@166 /* A Truesword, are ye? */
DO ~SetGlobal("LK#YeslickMazzy","GLOBAL",1)~
== BMAZZY @167 /* Yes, that is correct. And you are an Alaghar of Clangeddin, are you not? */
== BLK#YES @168 /* Aye, that I am. Ye seem like a good lass, Mazzy, and a noble Truesword iffin' I ever saw one. I am honoured to be travellin' with ye. */
== BMAZZY @169 /* You are too kind, Yeslick. Tell me; what is it that deems me worthy of your praise? */
== BLK#YES @170 /* I'm old, Mazzy. We old folk learn to be pickin' up on things ye young folk don't notice. Fer instance, when I was watchin' ye in battle, I could see that each and every move ye made was part of some kind o' grand, master plan. Ye didn't waste a single breath! */
== BMAZZY @171 /* Thank you, Yeslick, but I fear that I do not deserve your compliments--I only do as I was taught. */
= @172 /* But I thank you all the same. */
EXIT

// Mazzy 2
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickMazzy","GLOBAL",1)~ THEN BLK#YES LK#YeslickMazzy_2
@173 /* Mazzy, have ye ever thought ta become a cleric? */
DO ~SetGlobal("LK#YeslickMazzy","GLOBAL",2)~
== BMAZZY @174 /* What makes you ask? */
== BLK#YES @175 /* Well, ye got a little skill in the healin' arts I've seen, an' yer so devoted ta yer God. Why not become a cleric of Arvoreen? */
== BMAZZY @176 /* The ability to heal wounds is useful, true, but I much prefer being in the heat of battle alongside my comrades. Facing down the foes of the Defender, friends at my side and my blade gripped in hand is one of the greatest thrills in the world. I may not be a true cleric, but everything I do is in Arvoreen's name. */
== BLK#YES @177 /* Ye've got enough passion fer ten men, lass. I'm sure ye do yer God proud. */
== BMAZZY @178 /* I can only hope that you are right, friend Yeslick. */
EXIT

// Minsc 1
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickMinsc","GLOBAL",0)~ THEN BMINSC LK#YeslickMinsc_1
@179 /* Yeslick, my tiny friend, there you are! Minsc and Boo have been searching for you! */
DO ~SetGlobal("LK#YeslickMinsc","GLOBAL",1)~
== BLK#YES @180 /* Searching for me, have ye, Minsc? Whatever fer? */
== BMINSC @181 /* Minsc wonders why it is you are able to fight with the fury of a Rashemi warrior, and still be able to heal so very well. Most clerics that Minsc and Boo know do not fight so well. */
== BLK#YES @182 /* Well, Minsc, most o' me life was spent hunting wyverns with me clan. I reckon I just haven't been able ta shake me old ways */
== BMINSC @183 /* Hm... Minsc wonders if he could learn how to cast spells like dear Dynaheir once did and still be able to buttkick evil! Minsc has always loved seeing all the spells serve justice to evil doers. */
== BLK#YES @184 /* I'm no mageling, Minsc, but somethin' tells me ye ain't cut out fer spellwork... */
== BMINSC @185 /* Minsc is sure he has one of Dynaheir's old, stinky tomes here somewhere. Perhaps Boo could help Minsc read it, and go forth on the path of magery! */
EXIT

// Minsc 2
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickMinsc","GLOBAL",1)~ THEN BLK#YES LK#YeslickMinsc_2
@186 /* Ye know, Minsc, I find it kind o' hard ta be keepin' up with ye in the heat o' battle. With the way ye run off into the front lines, attackin' willy nilly, it makes it difficult fer me ta heal ye. */
DO ~SetGlobal("LK#YeslickMinsc","GLOBAL",2)~
== BMINSC @187 /* Oh, but friend Yeslick, Minsc and Boo only wish to put an end to villainy! The quicker Minsc's blade reaches our foes, the quicker hamsters worldwide can rejoice! */
== BLK#YES @188 /* That's all well an' good, Minsc, but do ye even stop ta consider yer own safety? */
== BMINSC @189 /* Minsc and Boo never think about themselves! Why, if all Minsc and Boo thought about were Minsc and Boo, then who would think about all the poor young children that the evil seeks to squish?! */ = @190 /* Minsc and Boo will not have it! As long as Minsc and Boo are about, there will be no squishing of the poor young children! DO YOU HEAR ME, EVIL?! MINSC IS TALKING TO YOU! */
== BLK#YES @191 /* An' this is exactly what I be talkin' about... */
EXIT

// Minsc 3
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickMinsc","GLOBAL",2)~ THEN BLK#YES LK#YeslickMinsc_3
@192 /* Yer lookin' pretty thoughtful, Minsc. What might ye be thinkin' about so focused-like? */
DO ~SetGlobal("LK#YeslickMinsc","GLOBAL",3)~
== BMINSC @193 /* Yeslick, my friend, you are old; surely you have seen many good comrades die, yes? */
== BLK#YES @194 /* Hmph! Old, am I? Well, I reckon that be true... and yes, I have seen many good friends die in me years. */
= @195 /* Yer thinkin' about Dynaheir, then, I take it? */
== BMINSC @196 /* Why, you... you are correct, friend Yeslick! How is it you knew who Minsc was thinking of? */
== BLK#YES @197 /* I know o' what that mage fiend did ta yer witch, Minsc. It would be wrong fer ye ta not think o' her from time ta time. We all got ta take the time and pay our respects ta the fallen every now and then. */
== BMINSC @198 /* I'm not sure how much use Dynaheir will get from Minsc paying her anything, Yeslick. Could we not just slay our foes in her name instead? */
== BLK#YES @199 /* I'm sure she'd appreciate it all the same, Minsc. */
EXIT

// Nalia 1
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickNalia","GLOBAL",0)~ THEN BLK#YES LK#YeslickNalia_1
@200 /* How are ye holdin' up, lassie? The adventurin' life turnin' out ta be everythin' ye thought it'd be? */
DO ~SetGlobal("LK#YeslickNalia","GLOBAL",1)~
== BNALIA @201 /* I'll admit, Sir Yeslick, that it has proven more tiresome than I had thought... but I will continue on. If I were to quit now, I would be giving just the satisfaction my Aunt Delcia wants. */
== BLK#YES @202 /* That's good ta be hearin', Nalia. You'll prove yer aunt wrong, I'll bet... and I'll be here helpin' ye all the way, iffin' ye ever be needin' me. */
== BNALIA @203 /* Thank you, Yeslick; it is good to know that someone has faith in me. */
EXIT

// Nalia 2
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickNalia","GLOBAL",1)~ THEN BLK#YES LK#YeslickNalia_2
@204 /* Is somethin' the matter, there, Nalia? Why ye be lookin' so solemn? */
DO ~SetGlobal("LK#YeslickNalia","GLOBAL",2)~
== BNALIA @205 /* You noticed, did you? I was only thinking of my father. You may not understand, since you never met him, but he was such a kind man... very much so unlike all the other nobles of this city. He didn't deserve the fate he was handed... and I just wish that I could have done something to prevent it. */
== BLK#YES @206 /* I'm sure he was a fine fella, Nalia. But listen, I know it's got ye upset, but there ain't nothin' ye can do about his passin' now. Ye shouldn't be blamin' yerself fer what happened. */
== BNALIA @207 /* Perhaps you are right, but I cannot help but wonder if there was something more that I could have done. */
= @208 /* I suppose it's true when they say we mortals are completely powerless when it comes to changing fate. */
== BLK#YES @209 /* It is good ye learn this while yer young, lass, despite how much it may hurt ye... trust me. */
EXIT

// Nalia 3
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickNalia","GLOBAL",2)~ THEN BNALIA LK#YeslickNalia_3
@210 /* You know, Yeslick, you remind me of a friend of my father's. */
DO ~SetGlobal("LK#YeslickNalia","GLOBAL",3)~
== BLK#YES @211 /* Is that so? Who was this fella? Not nearly as good lookin' as me, I'd imagine. */
== BNALIA @212 /* Well, actually, she's a woman. A dwarven woman. */
== BLK#YES @213 /* And how exactly do I remind ye o' a woman, lass? What are ye tryin' ta say here? */
== BNALIA @214 /* Oh, no, it's nothing like that! Please, hear me out! */
= @215 /* When her husband passed away, all of his riches were left to her. With the exception of my father, however, none of the nobles seemed to want to acknowledge her wealth. */ 
= @216 /* She was only invited to banquets and balls by my father, and when she arrived she would always take center stage. I still remember her telling all sorts of wild and imaginative stories at the banquets, much to the displeasure of everyone else there. Oh, it was a riot! */
== BLK#YES @217 /* Sounds like she gave them nobles the excitement that they were needin'. */
== BNALIA @218 /* She really did. And she was such a good woman, too! Kind, caring, motherly. In fact, now that I think of it, you two would be a perfect match for each other. Have you ever thought of settling down, Yeslick? */
== BLK#YES @219 /* What?! Nay, lass, I never thought o' any such foolishness! Enough o' this, I donnae have time fer settlin' down; we have a wizard ta catch! */
EXIT

// Nalia 4
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickNalia","GLOBAL",3)~ THEN BNALIA LK#YeslickNalia_4
@220 /* Yeslick, do you have a moment? I have been wondering something for sometime now, and I think you might be able to answer. */
DO ~SetGlobal("LK#YeslickNalia","GLOBAL",4)~
== BLK#YES @221 /* Oh, aye, I always have time fer you, Nalia. What's on yer mind? */
== BNALIA @222 /* Well, I've been wondering: are there any nobles in dwarven society? */
== BLK#YES @223 /* Ha! Nay, lass, we donnae have any use for nobles; or much of any other kind of social structure, really. In me clan, there were two types of people: the clan leader, and everyone else. No nobles ta slow anyone down. */
== BNALIA @224 /* So I was right. But that just raises the question of why any other society would need nobility. What good is it to have certain privileges taken away from your people based on how much money they earn? */
== BLK#YES @225 /* Th' way I understand it, lass, is that some people be havin' a powerful greed fer money an' authority both, an' they be willin' ta do anythin' they need ta get them. Nobody *needs* nobles except fer the nobles--an' everyone else be sufferin' because o' them. */
= @226 /* O'course, me opinion don't count fer naught, since I donnae see it th' way ye do, bu' there ye go. */
== BNALIA @227 /* In all honesty, Yeslick, I think that's the best description I've heard of more nobles than I'd care to admit. I appreciate your candor. (sigh) */
EXIT

// Valygar 1
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickValygar","GLOBAL",0)~ THEN BLK#YES LK#YeslickValygar_1
@228 /* Valygar, me friend, can you answer a question fer this old dwarf? */
DO ~SetGlobal("LK#YeslickValygar","GLOBAL",1)~
== BVALYGA @229 /* I wasn't aware we held any sort of bond of friendship... but sure. What is it you wish to know, master dwarf? */
== BLK#YES @230 /* Why is it ye hate magic so? I'm not one fer the arcane arts, but I can certainly see it's uses. */
== BVALYGA @231 /* You know not what you speak of. No offense, 'friend', but you cannot possibly understand the Corthala family. */
== BLK#YES @232 /* Ye speak of your own family with such grim tones. Why? Ye say that they have a problem with curses or some other sinister things, but they're still yer kin. Why not find you a good lady and try to start yer family anew? */
== BVALYGA @233 /* It is because of my family that I was forced to live secluded from society. Besides, I could never wish my family's curse on anyone... having a family would be no better than murder. */
== BLK#YES @234 /* I donnae see how thinkin' like that all the time could be healthy, Valygar... */
EXIT

// Valygar 2
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(FOREST)
Global("LK#YeslickValygar","GLOBAL",1)~ THEN BLK#YES LK#YeslickValygar_2
@235 /* It is a fine day ta be outside like this, wouldn't ye agree, Valygar? */
DO ~SetGlobal("LK#YeslickValygar","GLOBAL",2)~
== BVALYGA @236 /* A fine day indeed. I find I'm most comfortable in the wilderness like this. */
== BLK#YES @237 /* Aye, nothin' is as soothin' as havin' the cool breeze brush against me beard. I can almost see why ye would live in yer cabin with yer ranger friends. */
== BVALYGA @238 /* It was a lonely existance, but it was a peaceful one. To be able to bathe in the sunlight of the Umar Hills and not have to constantly worry about the damned Cowled Wizards or my lineage tearing me apart was a relief like no other. I cherish those memories above all else. */
== BLK#YES @239 /* Well, lets hope that ye can return to yer cabin one day, after <CHARNAME>'s business is done with. */
EXIT

// Viconia 1
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickViconia","GLOBAL",0)~ THEN BLK#YES LK#YeslickViconia_1
@240 /* It is surprisin' ta be seein' ye still well, Viconia. I must say, I donnae expect fer ye ta adjust so well on the surface as ye 'ave done. */
DO ~SetGlobal("LK#YeslickViconia","GLOBAL",1)~
== BVICONI @241 /* I do what I must to survive, inlul uss. Believe me when I say that my time on the surface has been anything but enjoyable. */
= @242 /* And you, hargluk; are you not too old for the battlefield? */
== BLK#YES @243 /* Rock O' Battle willin', dark elf, I'll be fighting fer the cause o' good fer as long as I be drawin' breath. */
== BVICONI @244 /* I see wisdom does not always come with age... */
== BLK#YES @245 /* Hmph! An' I see that yer trials on the surface haven't done nothin' ta humble ye. */
EXIT

// Yoshimo 1
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickYoshimo","GLOBAL",0)~ THEN BYOSHIM LK#YeslickYoshimo_1
@246 /* Yeslick, my good friend! Just the dwarf I wanted to see. */
DO ~SetGlobal("LK#YeslickYoshimo","GLOBAL",1)~
== BLK#YES @247 /* What's this now? Ye need ta speak at me, brigand? */
== BYOSHIM @248 /* I'm not sure how much enjoyment I would get from speaking *at* you. If it is not too much to ask, would you care to speak with me instead? */
== BLK#YES @249 /* Fine, fine. What is it ye need? */
== BYOSHIM @250 /* You traveled with <CHARNAME> during <PRO_HISHER> journey throughout the Sword Coast, yes? What was that like for you? */
== BLK#YES @251 /* I owed <CHARNAME> a great debt; it was <PRO_HESHE> that freed me from me old mines. Together, we overthrew the bastards that sought ta defile me mine and use the resources it produced fer their misdeeds. It was only because o' that I finally did me clan proud; I am confident that they can rest easy now, thanks to <CHARNAME>'s aid. Because o' what <CHARNAME> did fer me, I felt it was only right ta help out on <PRO_HISHER> quest ta bring down the Iron Throne. */
== BYOSHIM @252 /* It sounds like quite a fantastic journey. I am certain I will be hearing the bards sing of it for years to come, and it is an honor to be traveling with such heroes now. */
= @253 /* You mentioned your clan... they are no longer? */
== BLK#YES @254 /* Nay, me clan was wiped out long ago durin' a flood in me old mines. I would 'ave never returned to the mines if I hannae been captured by the Iron Throne and dragged back there. */
== BYOSHIM @255 /* I wonder if the loss of your clan had anything to do with your willingness to assist <CHARNAME>, no matter how noble goals might have been. */
== BLK#YES @256 /* Are ye sayin' I only helped <PRO_HIMHER> out fer some kind o' need fer vengeance? What kinda right do ye have ta be makin' such claims, thief? */
== BYOSHIM @257 /* All I am saying, my good dwarf, is that vengeance is a most noble goal. There is no shame in admitting that. */
EXIT

// Yoshimo 2
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickYoshimo","GLOBAL",1)~ THEN BLK#YES LK#YeslickYoshimo_2
@258 /* Does it ever bother ye, thief, ta be huntin' down innocent men an' women just ta collect the bounties on their heads? Is the gold really so important ta ye? */
DO ~SetGlobal("LK#YeslickYoshimo","GLOBAL",2)~
== BYOSHIM @259 /* If I did not collect the bounty, someone else would. As long as I do my job, the hunger of my purse is satisfied. What difference does it make who does the job? */
== BLK#YES @260 /* That's exactly what I meant, brigand! Ye not only allow things o' this sort ta go on, but ye take part in it, too? Have ye no concern o' what the gods think o' this kind of behavior? */
== BYOSHIM @261 /* I do not perform my job out of malice or hatred; I do it out of necessity. I am sure Illmater understands this. */
== BLK#YES @262 /* Ye should hope so. In fact, I better be hearin' ye pray tonight when we settle down! I'll not have a comrade o' mine lose his soul 'out o' necessity'. */
EXIT

// Yoshimo 3
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickYoshimo","GLOBAL",2)~ THEN BLK#YES LK#YeslickYoshimo_3
@263 /* What's the matter, thief? Cannae decide which innocent yer gonna rob next? */
DO ~SetGlobal("LK#YeslickYoshimo","GLOBAL",3)~
== BYOSHIM @264 /* Whatever do you mean, my dwarven friend? */
== BLK#YES @265 /* Donnae play dumb with me, Yoshimo. I may be old, but I saw what ye did earlier! Ye robbed that noble o' his wallet! */
== BYOSHIM @266 /* If it bothers you, Yeslick, just look at it this way; I was helping him by giving him less gold to preoccupy himself with. Now he has less gold to draw him away from his family, and to appreciate the simpler things. */
== BLK#YES @267 /* That donnae make what ye did right! Why, one o' these days the guard will finally get up off their arses and throw you in jail. When that day comes, donnae expect ol' Yeslick to go with ye! I'll tell'em I had nothin' ta do with yer thievery. */
== BYOSHIM @268 /* It is good to know we share such a close bond, my friend. */
EXIT

// Yoshimo 4
CHAIN IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#YeslickYoshimo","GLOBAL",3)~ THEN BYOSHIM LK#YeslickYoshimo_4
@269 /* There is nothing I enjoy more about this land than it's sensational assortment of beverages. Kara-Tur's selection pales in comparison to the awe-inspiring refreshments I have found here. */
DO ~SetGlobal("LK#YeslickYoshimo","GLOBAL",4)~
== BLK#YES @270 /* Bah! The only good brew is a dwarven brew, and don't ye forget that! */
== BYOSHIM @271 /* I'll keep that in mind, friend. */
= @272 /* As much as I enjoy the ale, though, I must admit to you that I don't dwell in establishments such as this for a drink. I find the patrons of such a place to be the main attractions. */
== BLK#YES @273 /* Are ye sayin' ye frequent bars ta pick up wenches? */
== BYOSHIM @274 /* No, my friend, although that is not a bad idea. */
= @275 /* See that gentleman over there in the corner? He looks rather unpleasant now, but what if he is not always in such poor shape? What if he owed a certain individual money, and was hustled for the payment? What if he found his lovely wife of twenty years in bed with another man, and was forced to fight for his honor? What if he's a member of the city guard, and has come to this place for relaxation after a dispute in the promenade? */
= @276 /* That young woman over there; do you see her? What do you suppose brought a young lass such as her into an unsavory institution such as this? Perhaps she has been sent by her mother to retrieve her alcoholic father for the countless time. Perhaps she is an orphan who is forced to find undesirable work simply to keep herself fed. Perhaps she is to meet her beloved her for a secret rendezvous, away from the prying eyes of their parents. */
== BLK#YES @277 /* Ye really think o' all this, thief? Why, I would've expected ye ta say somethin' like 'I steals their goods while they're drunk'. Perhaps I misjudged ye… */
= @278 /* Or perhaps ye should stop thinkin' and get ta drinkin'! If all yer gonna do is yammer on about yer thoughts, then I'll drink yer ale for ye! */
EXIT