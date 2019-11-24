APPEND ~imoen2j~

//BG2 section

IF ~PartyHasItem("Misc4e")
Global("Rielev","LOCALS",0)
~ THEN BEGIN s0 // from:
  SAY #37850 /* ~He's... he's dead now? This pathetic creature...~ [IMOENJ50] */
  IF ~~ THEN DO ~SetGlobal("Rielev","LOCALS",1)
~ GOTO s1
END

IF ~~ THEN BEGIN s1
  SAY #37851 /* ~I can't look away, <CHARNAME>. I have seen death in our scuffles before, but here I did nothing but watch his life end...~ */
  IF ~~ THEN GOTO s2
END

IF ~~ THEN BEGIN s2
  SAY #37852 /* ~I can't look away.~ */
  IF ~~ THEN REPLY #37853 /* ~Yet another corpse in my wake. Nothing odd about that. Let's go.~ */ GOTO s3
  IF ~~ THEN REPLY #37854 /* ~Death is not always to be feared, I guess. I would not wish to live like that.~ */ GOTO s3
  IF ~~ THEN REPLY #37855 /* ~We've no more time for your morbid fascinations. Let's get moving. ~ */ GOTO s3
END

IF ~~ THEN BEGIN s3
  SAY #37856 /* ~Death is... pretty. Why would I think that? Oh, <CHARNAME>, I've got to get out of this place.~ */
  IF ~~ THEN SOLVED_JOURNAL #47517 /* ~Free Rielev from his life-support.

Rielev has been released from his overlong life. I took the crystal that apparently powered the device that he floated in, but not before he said that it might be used to activate other servants in similar devices.~ */ EXIT
END

IF ~~ THEN BEGIN s4
  SAY #37857 /* ~This poor creature wishes to die? Right here? We should...~ [IMOENJ51] */
  IF ~~ THEN GOTO s5
END

IF ~~ THEN BEGIN s5
  SAY #37858 /* ~We should help... we should... we should see what happens now!~ */
  IF ~~ THEN DO ~MoveToObject("Rielev")
GiveItemCreate("Misc4e",Myself,1,0,0)
ActionOverride("Rielev",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN s6
  SAY #38537 /* ~I can help you too. Should I not try? I hate to see you cooped up like that.~ */
  IF ~~ THEN EXTERN ~JAHEIRA~ 74
END

IF ~~ THEN BEGIN s7
  SAY #38539 /* ~Minsc, that is horrible! I am so sorry for you. ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 43
END

IF ~~ THEN BEGIN s8
  SAY #38543 /* ~Eww, I... really don't want to think about that too much. ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 13
END

IF ~Global("ImoenClones","AR0602",1)
~ THEN BEGIN s9
  SAY #38544 /* ~I... I know this room. I've been in here... we both have. He... There are things in these tanks. They used to be people... ~ [IMOENJ52] */
  IF ~~ THEN DO ~SetGlobal("ImoenClones","AR0602",2)
~ GOTO s10
END

IF ~~ THEN BEGIN s10
  SAY #38559 /* ~What kind of monster is this guy? Captures us easy as pie, kills whoever he wants... that could have been us in those glass things.~ */
  IF ~~ THEN REPLY #38560 /* ~We'll get him back, Imoen. We'll make him pay for all of this.~ */ GOTO s12
  IF ~~ THEN REPLY #38561 /* ~Quit your whining. We're free now.~ */ GOTO s13
  IF ~~ THEN REPLY #38562 /* ~I'm sure we'll find him soon enough. I want to know what he wants with me.~ */ GOTO s15
END

IF ~~ THEN BEGIN s11
  SAY #38563 /* ~I don't know about that, Minsc, but he sure is a cute little fuzzy wuzzy. Aren't you, Boo? ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 14
END

IF ~~ THEN BEGIN s12
  SAY #38584 /* ~We don't even know where we are, and my head is still doing funny things... He said something... something about potential.~ */
  IF ~~ THEN GOTO s68
END

IF ~~ THEN BEGIN s13
  SAY #38599 /* ~Are we?  Horrible, horrible things surround us and my head still hurts like crazy.  I want to know what he did to me.  I remember... something about potential.~ */
  IF ~~ THEN GOTO s14
END

IF ~~ THEN BEGIN s14
  SAY #38602 /* ~He said it about you too: something about power that can be unleashed.  I don't care; I just have to get out.  Can we leave this room? It bothers me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s15
  SAY #38603 /* ~I want to know what he did to me, too. My head still hurts really bad. He said... said something about potential... about you too.~ */
  IF ~~ THEN GOTO s69
END

IF ~~ THEN BEGIN s16
  SAY #38606 /* ~Wow, a golem.  Powerful magic stuff.  Odd that it's not hostile.  I suppose its maker didn't expect us to escape so it never got orders for restraining us.~ */
  IF ~~ THEN GOTO s17
END

IF ~~ THEN BEGIN s17
  SAY #38611 /* ~They only do exactly what they are directed to, they don't really think. If it hasn't been told to keep quiet we might get some information out of it.~ */
  IF ~~ THEN EXTERN ~IGOLEM2~ 0
END

IF ~Global("ImoenEllesime","AR0602",1)
~ THEN BEGIN s18
  SAY #38612 /* ~What... what is this place. It's beautiful. Oh, there is simply no way that this space belongs to the same person that owns those horrible glass containers.~ [IMOENJ53] */
  IF ~~ THEN REPLY #38617 /* ~It is unlikely that our captor would rent out space. It must be his.~ */ DO ~SetGlobal("ImoenEllesime","AR0602",2)
~ GOTO s19
  IF ~~ THEN REPLY #38618 /* ~Perhaps it is simply a side of him we have not seen. ~ */ DO ~SetGlobal("ImoenEllesime","AR0602",2)
~ GOTO s19
END

IF ~~ THEN BEGIN s19
  SAY #38619 /* ~No, it can't be. Not the person I know. This... this bed, that table... I know of them. He would... he would speak of them while... while he...~ */
  IF ~~ THEN GOTO s20
END

IF ~~ THEN BEGIN s20
  SAY #38620 /* ~It's for a lost love, kept in perfect condition. She... she despises him. This is his monument to her. He spoke of all of this, but... but his voice was cold...~ */
  IF ~~ THEN GOTO s21
END

IF ~~ THEN BEGIN s21
  SAY #38621 /* ~No emotion at all, not even remembered. He spoke of these things even while he cut... he cut... and the spells that wove through my brain... cold, ugly things!~ */
  IF ~~ THEN REPLY #38622 /* ~He cannot hurt you now. You are among friends.~ */ GOTO s22
  IF ~~ THEN REPLY #38623 /* ~Calm down, you'll attract attention to us.~ */ GOTO s25
END

IF ~~ THEN BEGIN s22
  SAY #38624 /* ~It still hurts... his sick fingers are still in my head, doing whatever it was he started. I see blood... and death... behind my eyes... Irenicus...~ */
  IF ~~ THEN GOTO s23
END

IF ~~ THEN BEGIN s23
  SAY #38625 /* ~This room: if he could care for anything he would care for this room. Above the lives of all of us. It makes me sick. I feel... I feel... so much hate. ~ */
  IF ~~ THEN GOTO s24
END

IF ~~ THEN BEGIN s24
  SAY #38626 /* ~I would burn this place, but it is nothing. Even as it means so much, it is nothing. Let's do what we must and get out of this place, it is making me sick.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s25
  SAY #38627 /* ~We are nothing, that's why the golems don't care. Why bother worrying about gnats. Besides, he doesn't need to catch us. I can tell. I can feel it.~ */
  IF ~~ THEN GOTO s22
END

IF ~~ THEN BEGIN s26
  SAY #38628 /* ~Duergar, I think. Kind of evil, I guess, so I'm not surprised they would be working for our captor.~ */
  IF ~~ THEN REPLY #38629 /* ~Quite the little setup down here. Got everything he needs, including smiths.~ */ DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO s27
  IF ~~ THEN REPLY #38630 /* ~He tolerates some company, or are they little more than skilled packhorses to him?~ */ DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO s28
END

IF ~~ THEN BEGIN s27
  SAY #38631 /* ~For the knives, probably. The knives... he has a lot of them... I'm going to have a couple of scars from this... looks like you will too.~ */
  IF ~~ THEN GOTO s70
END

IF ~~ THEN BEGIN s28
  SAY #38632 /* ~I doubt he cares for anything more than the quality of knives they make.  He has a lot of them... I'm going to have scars from this... looks like you will too.~ */
  IF ~~ THEN GOTO s70
END

IF ~Global("SawKhalid","AR0603",1)
Global("ImoenKhalid","LOCALS",0)
~ THEN BEGIN s29
  SAY #38633 /* ~Jaheira... I want to say how sorry I am about Khalid... I... know this is hard...~ [IMOENJ54] */
  IF ~~ THEN DO ~SetGlobal("ImoenKhalid","LOCALS",1)
~ EXTERN ~JAHEIRAJ~ 296
END

IF ~~ THEN BEGIN s30
  SAY #38635 /* ~Stop calling me child. I'm as old as <CHARNAME>, and besides, I can tell you that Khalid did not suffer.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 297
END

IF ~~ THEN BEGIN s31
  SAY #38637 /* ~I'm not babbling! I saw him do this! Khalid was dead when our captor started... doing those things to him! ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 298
END

IF ~~ THEN BEGIN s32
  SAY #38639 /* ~He... he showed me. He cut and... and showed me. He forced my eyes open and made me look as he...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 299
END

IF ~~ THEN BEGIN s33
  SAY #38641 /* ~He said I should see, so I would understand, but I don't know what he wanted! He would cut and say "Do you see?" Cut and say "Do you see?"~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 300
END

IF ~~ THEN BEGIN s34
  SAY #38643 /* ~I am not a child! I'm as old as <CHARNAME>, and I've... I've seen. I can see...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 301
END

IF ~~ THEN BEGIN s35
  SAY #38645 /* ~I see now... in my head... cut, "yes, I see..."~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 302
END

IF ~Global("ImoenDryad","AR0602",2)
~ THEN BEGIN s36
  SAY #38647 /* ~So beautiful! I used to dream of dryads and their beautiful trees. ~ [IMOENJ55] */
  IF ~~ THEN DO ~	SetGlobal("ImoenDryad","AR0602",3)
~ EXTERN ~IDRYAD1~ 14
END

IF ~~ THEN BEGIN s37
  SAY #38649 /* ~I used to dream... but he doesn't. Your charms don't work on him anymore, do they?~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 15
END

IF ~~ THEN BEGIN s38
  SAY #38651 /* ~Irenicus...~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 16
END

IF ~~ THEN BEGIN s39
  SAY #38653 /* ~No, death sounds different. He showed me... I spit on his name. I spit on this place.~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 17
END

IF ~~ THEN BEGIN s40
  SAY #38655 /* ~I have learned... something different. So beautiful you are. I almost can't see you. I just want to go home. Oh <CHARNAME>, when can we go home?~ */
  IF ~~ THEN EXIT
END

IF ~Global("Rested","LOCALS",1)
~ THEN BEGIN s41
  SAY #38661 /* ~I've got to hand it to you, you sure have some kind of courage to sleep in this place. I would have run screaming a dozen times over if you weren't here.~ [IMOENJ56] */
  IF ~~ THEN REPLY #38662 /* ~We needed rest to succeed. We had to take the chance.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO s42
  IF ~~ THEN REPLY #38663 /* ~It seemed safe enough. No one has taken serious notice of our escape.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO s46
  IF ~~ THEN REPLY #38664 /* ~I know what you mean. This place worries me too.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO s47
END

IF ~~ THEN BEGIN s42
  SAY #38665 /* ~I guess I should be used to sleeping with both eyes open.  I don't deal with this well.  We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38666 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO s43
  IF ~~ THEN REPLY #38667 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO s48
  IF ~~ THEN REPLY #38669 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO s49
END

IF ~~ THEN BEGIN s43
  SAY #38671 /* ~He was a great mage, and supposedly a great adventurer. It's funny; we lived with him for years and Jaheira seems to know more about him.~ */
  IF ~!IsValidForPartyDialog("Jaheira")
~ THEN GOTO s44
  IF ~IsValidForPartyDialog("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 304
END

IF ~~ THEN BEGIN s44
  SAY #38672 /* ~I guess he was a big friend of the Harpers.  Even got a visit from Khelben "Blackstaff" once.  Real powerful mage.  Talked to Gorion like an equal.~ */
  IF ~~ THEN GOTO s45
END

IF ~~ THEN BEGIN s45
  SAY #38674 /* ~I wish we could go back to those days, before all this fuss and bother. Before I learned... Well, we've seen so much. Candlekeep seems so small now.~ */
  IF ~~ THEN REPLY #38683 /* ~Yes, but then to me it always did. It was home, but I outgrew it.~ */ GOTO s51
  IF ~~ THEN REPLY #38684 /* ~There wasn't much to go back to with Gorion gone. ~ */ GOTO s53
  IF ~~ THEN REPLY #38685 /* ~You have to move on eventually. Speaking of which, we should get going.~ */ GOTO s49
END

IF ~~ THEN BEGIN s46
  SAY #38686 /* ~Seems like we're not important enough to worry about.  I'm just not up to this like you. We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38687 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO s43
  IF ~~ THEN REPLY #38688 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO s48
  IF ~~ THEN REPLY #38689 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO s49
END

IF ~~ THEN BEGIN s47
  SAY #38690 /* ~Does it?  Then I feel better.  I figured I didn't deal with this as well as you.  We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38693 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO s43
  IF ~~ THEN REPLY #38694 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO s48
  IF ~~ THEN REPLY #38695 /* ~That's your preference. I prefer to lead. Speaking of which, we should ge going.~ */ GOTO s49
END

IF ~~ THEN BEGIN s48
  SAY #38697 /* ~Well, when people are in danger, sure. Winthrop taught me how to get out of trouble, but Gorion always said there are times when it's worth getting into it.~ */
  IF ~~ THEN REPLY #38701 /* ~Well, right now we're in danger, and I guess we should work on getting out. Let's go.~ */ GOTO s49
  IF ~~ THEN REPLY #38702 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO s43
END

IF ~~ THEN BEGIN s49
  SAY #38703 /* ~Yeah, you're right. I don't want to spend a second more in this place than I have to. My head still hurts and I keep seeing things in corners and such.~ */
  IF ~~ THEN GOTO s50
END

IF ~~ THEN BEGIN s50
  SAY #38704 /* ~We won't be able to just walk away, you know.  The guy that captured us... he knows about you.  He said something about potential, something about great power.~ */
  IF ~~ THEN GOTO s64
END

IF ~~ THEN BEGIN s51
  SAY #38705 /* ~Funny that. I was sorry to go, but I couldn't let you wander off on your own, now could I? After Gorion d... died, you needed all the help you could get.~ */
  IF ~~ THEN GOTO s52
END

IF ~~ THEN BEGIN s52
  SAY #38706 /* ~Not that I'm much help right now. My head still aches and I keep seeing things. Too much death around here, everywhere. It's in everything, even me. ~ */
  IF ~~ THEN GOTO s50
END

IF ~~ THEN BEGIN s53
  SAY #38707 /* ~We still had friends there.  They were proud, even if they didn't show it.  Winthrop said so.  He always thought Gorion was too stuffy.  I don't know though.~ */
  IF ~~ THEN GOTO s54
END

IF ~~ THEN BEGIN s54
  SAY #38708 /* ~Ooh, my head still hurts and I keep thinking I see... things in the corners. Too much death here for my liking. It's in everything, even us.~ */
  IF ~~ THEN GOTO s50
END

IF ~Global("ImoenClone1","LOCALS",1)
~ THEN BEGIN s55
  SAY #38734 /* ~What a tortured creature that clone-thing was. She was a copy? A copy of another person?~ [IMOENJ57] */
  IF ~~ THEN DO ~SetGlobal("ImoenClone1","LOCALS",2)
~ GOTO s56
END

IF ~~ THEN BEGIN s56
  SAY #38735 /* ~I wonder why Irenicus made her?  I doubt he took pleasure in her company; he's beyond that.  He's fascinated with death.  He showed me... over and over...~ */
  IF ~~ THEN EXIT
END

IF ~Global("ImoenLibrary","AR0602",1)
~ THEN BEGIN s57
  SAY #38787 /* ~Oh, this reminds me so much of Candlekeep. Dusty old tomes all over, bookcases nearly spilling, it's like we never left...~ [IMOENJ58] */
  IF ~~ THEN DO ~SetGlobal("ImoenLibrary","AR0602",2)
~ GOTO s58
END

IF ~~ THEN BEGIN s58
  SAY #38788 /* ~But we did, didn't we. <CHARNAME>, I just want to go home again. It doesn't matter where it is, just so long as I can call it home.~ */
  IF ~~ THEN EXIT
END

IF ~Global("ImoenIlyich","LOCALS",1)
~ THEN BEGIN s59
  SAY #39761 /* ~Those dwarves that attacked us; I read about them when you were skipping out of lessons back in Candlekeep. ~ [IMOENJ59] */
  IF ~~ THEN DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO s26
END

IF ~False()~ THEN BEGIN s60
  SAY #47215 /* ~Something strange up here. Be careful, this place has all manner of dangerous devices in it. I don't know what they do, but I know we would be safer if we shut them off.~ */
  IF ~~ THEN GOTO s61
END

IF ~~ THEN BEGIN s61
  SAY #47220 /* ~Do you smell that?  Smells like lightning, but indoors?  That can't be right.  I think I remember. Look to the right... the machine making the storm....~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s62
  SAY #49035 /* ~Get out of my way! I don't want to fight any of you, I just want to leave!~ */
  IF ~~ THEN EXTERN ~ISHADMT1~ 7
END

IF ~~ THEN BEGIN s63
  SAY #56483 /* ~Athkatla?  That's... the City of Coin, right?  A merchant city in Amn.  We come from the Sword Coast, a ways to the north.  Why do you think we're in Athkatla?~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 42
END

IF ~~ THEN BEGIN s64
  SAY #58492 /* ~<CHARNAME>, say we won't look back.  I don't care if he can "tap the power" or access whatever avatar stuff.  We've gotta get away from all this death.~ */
  IF ~~ THEN REPLY #58493 /* ~I have no intention of looking back.  Our 'host' has proven his evil intent.~ */ GOTO s65
  IF ~~ THEN REPLY #58494 /* ~If it were just me, I might be interested in what he wants, but I will not have you harmed further.~ */ GOTO s66
  IF ~~ THEN REPLY #58495 /* ~If he's uncovered something I can use, perhaps I will 'encourage' him to reveal it.~ */ GOTO s67
END

IF ~~ THEN BEGIN s65
  SAY #58496 /* ~Means a lot to hear that. I can't stand all these shadows...~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN s66
  SAY #58497 /* ~I appreciate that, but I doubt he meant you any good either. Didn't spare you the knives any more than me. Come on, I gotta get away from all these shadows.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN s67
  SAY #58498 /* ~Let it go, please?  Whoever he is, and whatever he can do, above it all he's a vile bastard that's hurt us both. Come on, I gotta get away from all this death.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN s68
  SAY #58502 /* ~He said something like "releasing power within you so it could be used," but if it means taking part in horrible things... I don't like this place.  Can we go?~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN s69
  SAY #58503 /* ~<CHARNAME>, I don't care if he could make us three ogres strong, I have to get out of this place.  It bothers me.  Makes me think I see... things.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN s70
  SAY #58504 /* ~As if I need another reminder.  <CHARNAME>, I don't care what power this guy thinks he can tap in you, he's just sick to the core. We can't ever look back.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a Child of Bhaal.  He supposedly mentioned a means of allowing me to tap that power.  I am in no position to question him at the moment, but I will keep it in mind for the future.  ~ */ FLAGS 128 EXIT
END

END