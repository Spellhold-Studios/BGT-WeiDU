BEGIN ~niemai~

IF ~InParty("XZAR")~ THEN BEGIN 0
  SAY @18139
  IF ~~ THEN REPLY @18140 GOTO 1
  IF ~~ THEN REPLY @18141 GOTO 3
  IF ~~ THEN REPLY @18142 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @18143
  IF ~~ THEN REPLY @18144 GOTO 2
  IF ~~ THEN REPLY @18145 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @18146
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18148
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18150
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()~ EXIT
END

IF ~InParty("MONTARON")~ THEN BEGIN 5
  SAY @18151
  IF ~~ THEN REPLY @18153 GOTO 6
  IF ~~ THEN REPLY @18154 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @18156
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @18160
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()~ EXIT
END

IF ~True()~ THEN BEGIN 8
  SAY @18161
  IF ~~ THEN REPLY @18163 GOTO 9
  IF ~~ THEN REPLY @18162 GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @18164
  IF ~~ THEN REPLY @18165 GOTO 10
  IF ~~ THEN REPLY @18166 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @18167
  IF ~~ THEN DO ~ActionOverride("OULAM",Enemy())
ActionOverride("WHEBER",Enemy())
ActionOverride("WILLIAM",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @18168
  IF ~~ THEN DO ~ActionOverride("OULAM",Enemy())
ActionOverride("WHEBER",Enemy())
ActionOverride("WILLIAM",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @18169
  IF ~~ THEN REPLY @18170 GOTO 13
  IF ~~ THEN REPLY @18171 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @18172
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @18173
  IF ~~ THEN DO ~ActionOverride("OULAM",Enemy())
ActionOverride("WHEBER",Enemy())
ActionOverride("WILLIAM",Enemy())
Enemy()~ EXIT
END
