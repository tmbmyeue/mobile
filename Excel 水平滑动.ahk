#Singleinstance Force

;Horizontal scrolling in Excel only
#IfWinActive ahk_class XLMAIN

    +WheelUp:: 
        SetScrollLockState, On 
        SendInput {Left} 
        SetScrollLockState, Off 
    Return 

    +WheelDown:: 
        SetScrollLockState, On 
        SendInput {Right} 
        SetScrollLockState, Off 
    Return 

; Horizontal scrolling in everything except Excel. 
#IfWinNotActive ahk_class XLMAIN 

    +WheelDown::WheelRight
    +WheelUp::WheelLeft


; make capslk into esc

Capslock::Esc
+Capslock::Capslock

; make alt+h left alt+l reprensts right
!h::send {Left}
!l::send {Right}
!j::send {Down}
!k::send {Up}

; make win+enter represts end and enter
#Enter::
	send, {End} {Enter}
return