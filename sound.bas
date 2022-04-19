#include "vbcompat.bi"
#inclib "ccsleep"
public const ins=0
public const outs=1
Declare Function wiringpisetup cdecl lib "wiringPi" Alias "wiringPiSetup"  () As integer
Declare sub pinmode cdecl lib "wiringPi" Alias "pinMode"  (n as integer,mode as integer )
Declare function digitalRead cdecl lib "wiringPi" Alias "digitalRead"  (n as integer)as integer
Declare sub digitalWrite cdecl lib "wiringPi" Alias "digitalWrite"  (n as integer,value as integer)
Declare sub ccsleep cdecl lib "ccsleep" Alias "ccsleep" (t as integer)

dim ii as double
dim i as integer
dim f as double
dim ff as double
dim fff as double
ff=now()
ii=ff
ff=dateadd("s",val(trim(command(2))),ff)
on error goto exits
fff=val(trim(command(1)))
f=1/fff
if wiringpisetup()=-1 then system()
'pin 7 gpio 4
pinmode 7,1
while 1
	digitalWrite 7,1
	ccsleep f*5000
	digitalWrite 7,0
	ccsleep f*5000
	if now()>ff then goto exits
wend
exits:
