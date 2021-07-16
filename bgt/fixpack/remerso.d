ADD_STATE_TRIGGER ~emerso~ 0 ~NumTimesTalkedTo(0)~ 1

ADD_STATE_TRIGGER ~emerso~ 2 ~Global("SpokeToEmerson","GLOBAL",1)~

ADD_STATE_TRIGGER ~emers2~ 0 ~Global("A6EmersonGoodbye","GLOBAL",0)~

ADD_TRANS_ACTION ~emers2~ BEGIN 0 END BEGIN END ~SetGlobal("A6EmersonGoodbye","GLOBAL",1)~

APPEND ~emers2~ IF ~Global("A6EmersonGoodbye","GLOBAL",1)~ THEN BEGIN 1 SAY @6134 IF ~~ THEN EXIT END END
