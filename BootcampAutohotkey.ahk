;	mac_bootcamp.ahk
;
;	This file rearranges default windows commands to work naturally with 
;	the mac keyboard and behaviors from OS X.
;
;	List of Features:
;		- Inverse Scrolling
;		- control & command keys swapped
;		- Command-Q (being remapped to ctrl-q) sends Alt-F4 message to close an app.


;	Inverse Scrolling:
;
WheelUp::
 Send {WheelDown}
 Return

WheelDown::
 Send {WheelUp}
 Return

;	Swap Control & Command keys
;	
LWin::LCtrl
LCtrl::LWin
RWin::RCtrl
return

;	Send Alt-F4 with Command-q
;
^q::Send !{F4}
return
