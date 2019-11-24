// alora
REPLACE_ACTION_TEXT alorap ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_STATE_TRIGGER alorap %cd_alorap% ~HappinessLT(Myself,0) Global("IWasKickedOut","LOCALS",0) GlobalLT("ENDOFBG1","GLOBAL",2)~
ADD_TRANS_ACTION alorap BEGIN %cd_alorap% END BEGIN END ~SetGlobal("IWasKickedOut","LOCALS",1) LeaveParty() EscapeArea()~
SET_WEIGHT alorap %cd_alorap% #0