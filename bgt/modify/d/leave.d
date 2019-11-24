// coran handled in bgt/compat/bgt/coranp.d
// dynaheir handled in bgt/compat/bgt/dynap.d
// kagain handled in bgt/compat/bgt/kagaip.d or bgt/compat/nej/kagaip.d
// kivan handled in bgt/compat/bgt/kivanp.d or bgt/compat/nej/kivanp.d
// jaheira handled in bgt/compat/bgt/ajaheirap.d or bgt/compat/nej2/replace//ajaheirap.d
// montaron handled in bgt/compat/bgt/montap.d or bgt/compat/tdd/montap.d
// shar-teel handled in bgt/compat/bgt/shartp.d or bgt/compat/tdd/shartp.d
// xzar handled in bgt/compat/bgt/xzarp.d or bgt/compat/tdd/xzarp.d
// yeslick handled in bgt/compat/bgt/yeslip.d or bgt/compat/tdd/yeslip.d

// dialogues that need STATE_WHICH_SAYS farmed out to individual leave_foo.d files in this folder

// ajantis
REPLACE_ACTION_TEXT ajantp ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT ajantp ~EscapeAreaDestroy(90)~ ~SetGlobal("AjantisLeave","GLOBAL",1) Enemy()~

// branwen
REPLACE_ACTION_TEXT branwp ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT branwp ~\(EscapeAreaDestroy(90)\)~ ~LeaveParty() \1~
REPLACE_ACTION_TEXT branwp ~\(EscapeArea()\)~ ~LeaveParty() \1~

// faldorn
REPLACE_ACTION_TEXT faldop ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT faldop ~\(EscapeAreaDestroy(90)\)~ ~LeaveParty()\1~
REPLACE_ACTION_TEXT faldop ~\(EscapeArea()\)~ ~LeaveParty() \1~

// garrick
REPLACE_ACTION_TEXT garrip ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT garrip ~\(EscapeAreaDestroy(90)\)~ ~SetGlobal("IWasKickedOut","LOCALS",1) \1~
REPLACE_ACTION_TEXT garrip ~\(EscapeArea()\)~ ~SetGlobal("IWasKickedOut","LOCALS",1) \1~

// quayle
REPLACE_ACTION_TEXT quaylp ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT quaylp ~\(EscapeAreaDestroy(90)\)~ ~LeaveParty() \1~
REPLACE_ACTION_TEXT quaylp ~\(EscapeArea()\)~ ~LeaveParty() \1~

// safana
REPLACE_ACTION_TEXT safanp ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT safanp ~\(EscapeAreaDestroy(90)\)~ ~LeaveParty() \1~
REPLACE_ACTION_TEXT safanp ~\(EscapeArea()\)~ ~LeaveParty() \1~

// tiax
REPLACE_ACTION_TEXT tiaxp ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT tiaxp ~\(EscapeAreaDestroy(90)\)~ ~LeaveParty() \1~
REPLACE_ACTION_TEXT tiaxp ~\(EscapeArea()\)~ ~LeaveParty() \1~

// xan
REPLACE_ACTION_TEXT xanp ~\(SetGlobal("IWasKickedOut","LOCALS",1)\)~ ~\1 LeaveParty()~
REPLACE_ACTION_TEXT xanp ~\(EscapeAreaDestroy(90)\)~ ~LeaveParty() \1~
REPLACE_ACTION_TEXT xanp ~\(EscapeArea()\)~ ~LeaveParty() \1~

