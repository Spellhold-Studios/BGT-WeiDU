REPLACE_STATE_TRIGGER ~gerde~ 4 ~Global("A6AngryGerde","GLOBAL",2)~

REPLACE_STATE_TRIGGER ~gerde~ 5 ~Global("HelpGerde","GLOBAL",2)~

ADD_STATE_TRIGGER ~gerde~ 1 ~Global("A6AngryGerde","GLOBAL",0)~ 2 5

ADD_STATE_TRIGGER ~gerde~ 3 ~Global("A6AngryGerde","GLOBAL",1)~

REPLACE_SAY ~gerde~ 3 @900003

REPLACE_TRANS_ACTION ~gerde~ BEGIN 1 END BEGIN END ~EscapeAreaDestroy(90)~ ~~

ADD_TRANS_ACTION ~gerde~ BEGIN 3 END BEGIN END
 ~SetGlobal("A6AngryGerde","GLOBAL",2)
  EraseJournalEntry(@310085)
  EraseJournalEntry(@310234)
  EraseJournalEntry(@310235)~
