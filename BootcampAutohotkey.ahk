;#############################################################################;
;    mac_bootcamp.ahk
;
;    This file rearranges default windows commands to work naturally with 
;    the mac keyboard and behaviors from OS X.
;
;    List of Features:
;        - Inverse Scrolling
;        - control & command keys swapped
;        - Spotlight shortcut remapped to Windows search (Command-Space)
;        - Command-Q (remapped to ctrl-q) sends Alt-F4 message to close an app.
;
;#############################################################################;
;    Change Values here to easily customize your configuration:

    INVERT_SCROLLING     = yes
    SWAP_CONTROL_COMMAND = yes
    SPOTLIGHT_SHORTCUT   = yes
    COMMAND_Q_QUIT_APPS  = yes

;#############################################################################;


;#######################;
;    Invert Scrolling:  ;
;#######################;
if (INVERT_SCROLLING = "yes") {
    WheelUp::
        Send {WheelDown}
        Return

    WheelDown::
        Send {WheelUp}
        Return

    #MaxHotkeysPerInterval 200
}


;###############################;
;  Swap Control & Command keys  ;
;###############################;
if (SWAP_CONTROL_COMMAND = "yes") {
    LWin ::LCtrl
    LCtrl::LWin
    RWin ::RCtrl
}


;###################################################;
;  Open search with Command-Space (like Spotlight)  ;
;###################################################;
if (SPOTLIGHT_SHORTCUT = "yes") {
    ^Space:: 
        Send # {s}
        return
}


;###############################;
;  Send Alt-F4 with Command-Q   ;
;###############################;
if (COMMAND_Q_QUIT_APPS = "yes") {
    ^q::
        Send ! {F4}
        return
}
