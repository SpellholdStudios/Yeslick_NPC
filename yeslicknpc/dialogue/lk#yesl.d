BEGIN LK#YESL

IF ~NumTimesTalkedTo(0)~ Yintro
  SAY @0 /* <CHARNAME>? <CHARNAME>, is that you? By Clangeddin, it is! I had almost given up hope o' findin' ye in this blasted town, and here ye are findin' me! */
  ++ @1 /* It is good to see you, my old friend. What brings you to Amn? I had heard you had taken up a job working for Taerom. */ + Yjoina
  ++ @2 /* Never expected to find the likes of you here. What are you doing in Amn, Yeslick? The last I had heard of you, Taerom had taken you in at his smithy. The trek from Beregost is no small feat. */ + Yjoinb
  ++ @3 /* Oh, hello dwarf. What cause do you have to seek me out? It has been long since we last spoke, and I had assumed you had moved on with your life. */ + Yjoinc
END

IF ~~ Yjoina
  SAY @4 /* Old friend? Hoi! I'll have ye know, I made the journey from Beregost just fine. I can keep up with any o' ye young folk! */
  = @5 /* Ye heard right about me goin' ta work for ol' Taerom, and that suited me well for a short time. I got ta havin' all kinds o' nasty nightmares, though, and each o' them involved you in some way. */
  = @6 /* I felt like it was a sign that I still had a part to play in yer adventures, so I decided ta track ye down. Sure, I wasn't any sort o' happy ta find ye had moved all the way to Amn, but I dinnae let that slow me down. */
  ++ @7 /* You always were a superstitious man. I would love to have you join me, though, my friend. I should warn you, however, that I am in the middle of tracking down a rogue wizard by the name of Irenicus. I do not know what purpose he has, but he has taken something very dear to me that I must retrieve. It will be a dangerous journey. */ + Yjoind
  ++ @8 /* Your aid would be greatly appreciated, my friend. Imoen was recently incarcerated in Spellhold, and I am in the process of finding the means of traveling there. This will be a long and arduous journey. */ + Yjoine
  ++ @9 /* I am sorry, Yeslick, but I feel as though I have no need for extra aid at the moment. Perhaps some other time? */ + Yjoinf
  ++ @10 /* Thank you, but no thank you. I have no need for an old, decrepit dwarf slowing me down. */ + Yjoing
END

IF ~~Yjoind
  SAY @11 /* A wizard, ye say? Sounds like an excitin' quest ta me! Count me in, and we'll show that wizard what happens when ye mess with <CHARNAME> and Yeslick Orothiar! */
  IF ~~ DO ~JoinParty() SetGlobal("LK#YeslickJoined","LOCALS",1)~ EXIT
END

IF ~~ Yjoine
  SAY @12 /* What sort of vile bastards could be so cruel as ta lock away poor Imoen? Worry not, <CHARNAME>! Iffin' there's anyone more willin' ta find Imoen than ye, it'd be me. I won't rest one bit until our search fer the poor lass is done! */
  IF ~~ DO ~JoinParty() SetGlobal("LK#YeslickJoined","LOCALS",1)~ EXIT
END

IF ~~ Yjoinf
  SAY @13 /* Oh... oh, aye. I understand. If me old legs weren't so damn useless, maybe I coulda made it here sooner and had been of more use ta ye. Iffin' ye need me, I'll be in the Thunderhead Tavern. May as well try the local ale ta make the trip seem more worthwhile, eh? */
  IF ~~ DO ~SetGlobal("LK#YeslickTavernSpawn","GLOBAL",1) MoveToPoint([0.0]) Wait(2) DestroySelf()~ EXIT
END

IF ~~ Yjoing
  SAY @14 /* Hoi! Iffin' thats the way ye feel, then maybe this was a mistake. I'm a damn fool fer believin' that I had anythin' more ta do with you; I should have never payed any heed ta those damn dreams. Back ta Beregost fer me, and hopefully ta hell fer you. */
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ Yjoinb
  SAY @5 /* Ye heard right about me goin' ta work for ol' Taerom, and that suited me well for a short time. I got ta havin' all kinds o' nasty nightmares, though, and each o' them involved you in some way. */
  = @6 /* I felt like it was a sign that I still had a part to play in yer adventures, so I decided ta track ye down. Sure, I wasn't any sort o' happy ta find ye had moved all the way to Amn, but I dinnae let that slow me down. */
  ++ @7 /* You always were a superstitious man. I would love to have you join me, though, my friend. I should warn you, however, that I am in the middle of tracking down a rogue wizard by the name of Irenicus. I do not know what purpose he has, but he has taken something very dear to me that I must retrieve. It will be a dangerous journey. */ + Yjoind
  ++ @8 /* Your aid would be greatly appreciated, my friend. Imoen was recently incarcerated in Spellhold, and I am in the process of finding the means of traveling there. This will be a long and arduous journey. */ + Yjoine
  ++ @9 /* I am sorry, Yeslick, but I feel as though I have no need for extra aid at the moment. Perhaps some other time? */ + Yjoinf
  ++ @10 /* Thank you, but no thank you. I have no need for an old, decrepit dwarf slowing me down. */ + Yjoing
END

IF ~~ Yjoinc
  SAY @15 /* Hmph! Happy te see ye, too, <CHARNAME>. Moved on with me life I had, workin' in Taerom's smithy back in Beregost. Suited me well for a short time, 'til I got ta havin' all kinds o' nasty nightmares. Each o' them involved you in some way. */
  = @6 /* I felt like it was a sign that I still had a part to play in yer adventures, so I decided ta track ye down. Sure, I wasn't any sort o' happy ta find ye had moved all the way to Amn, but I dinnae let that slow me down. */
  ++ @7 /* You always were a superstitious man. I would love to have you join me, though, my friend. I should warn you, however, that I am in the middle of tracking down a rogue wizard by the name of Irenicus. I do not know what purpose he has, but he has taken something very dear to me that I must retrieve. It will be a dangerous journey. */ + Yjoind
  ++ @8 /* Your aid would be greatly appreciated, my friend. Imoen was recently incarcerated in Spellhold, and I am in the process of finding the means of traveling there. This will be a long and arduous journey. */ + Yjoine
  ++ @9 /* I am sorry, Yeslick, but I feel as though I have no need for extra aid at the moment. Perhaps some other time? */ + Yjoinf
  ++ @10 /* Thank you, but no thank you. I have no need for an old, decrepit dwarf slowing me down. */ + Yjoing
END
