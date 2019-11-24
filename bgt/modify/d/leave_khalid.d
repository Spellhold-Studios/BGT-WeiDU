// khalid
REPLACE_ACTION_TEXT khalip ~\([^,]SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_STATE_TRIGGER khalip %cd_khalip1% ~HappinessLT(Myself,0) Global("IWasKickedOut","LOCALS",0) GlobalLT("ENDOFBG1","GLOBAL",2) Dead("Jaheira")~
REPLACE_STATE_TRIGGER khalip %cd_khalip2% ~HappinessLT(Myself,0) Global("IWasKickedOut","LOCALS",0) GlobalLT("ENDOFBG1","GLOBAL",2) !Dead("Jaheira")~
ADD_TRANS_ACTION khalip BEGIN %cd_khalip1% %cd_khalip2% END BEGIN END ~SetGlobal("IWasKickedOut","LOCALS",1) LeaveParty() EscapeArea()~
ADD_TRANS_ACTION khalip BEGIN %cd_khalip2% END BEGIN END ~ActionOverride("Jaheira",SetGlobal("IWasKickedOut","LOCALS",1)) ActionOverride("Jaheira",LeaveParty()) ActionOverride("Jaheira",EscapeArea())~
SET_WEIGHT khalip %cd_khalip1% #-1
SET_WEIGHT khalip %cd_khalip2% #-1