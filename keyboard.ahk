﻿Activ(_exe, _path){
    if  WinExist("ahk_exe" + _exe){
        If not( WinActive("ahk_exe" + _exe)) {
            WinActivate 
            ;Send, Activate.{Enter}
            return
        }

        else {
            ;Send, WAS ACTIVE.{Enter}
            WinMinimize
            return
        }
    }

    else{
        Run,% _path,
    }
}


^+!#0:: Activ("Premiere Pro.exe","C:\Program Files\Adobe\Adobe Premiere Pro 2020\Adobe Premiere Pro.exe")

^+!#1:: Activ("PaintDotNet.exe","C:\Program Files\paint.net\PaintDotNet.exe")
^+!#2:: Activ("vivaldi.exe","C:\Program Files\Vivaldi\Application\vivaldi.exe")
^+!#3:: Activ("pycharm64.exe","C:\Program Files\JetBrains\PyCharm 2020.3\bin\pycharm64.exe")

^+!#4:: Activ("emacs.exe", "C:\emacs\emacs-26.3-x86_64\bin\runemacs.exe")
^+!#5:: Activ("msys2.exe","C:\msys64\msys2.exe") ;?
^+!#6:: Activ("Photoshop.exe","C:\Program Files\Adobe\Adobe Photoshop 2020\Photoshop.exe") ;?

^+!#7:: Activ("notepad++.exe", "C:\Program Files (x86)\Notepad++\notepad++.exe") ;?
^+!#8:: Activ("Figma.exe","C:\Users\olaf\AppData\Local\Figma\Figma.exe")
^+!#9:: Activ("Trello.exe", "C:\Trello\app\Trello.exe")



OnLocale(InputLocaleID)  {
    ControlGetFocus, CtrlFocus, % "ahk_id" WinExist("A")
    PostMessage, 0x50, 0, InputLocaleID, %CtrlFocus%
}

~RShift::OnLocale(-0xF3EFBE7) ; to Russian
~RCtrl::OnLocale(-0xF3FFBE7)  ; to English

;~RShift::OnLocale(0x4190419) ; to Russian
;~RCtrl::OnLocale(0x4090409)  ; to English


<^<!<+a::Send, ~
<^<!<+b::Send, #
<^<!<+c::Send, № 
<^<!<+d::Send, ``
<^<!<+e::Send, >
<^<!<+f::Send, =>

<^<!<+k::Send, «
<^<!<+l::Send, =
<^<!<+m::Send, $ 
<^<!<+n::Send, {{}
<^<!<+o::Send, {}}
<^<!<+p::Send, [

<^<!<+q::Send, ]
<^<!<+r::Send, '
<^<!<+s::Send, »

<^<!<+t::Send, <
<^<!<+u::Send, &
<^<!<+v::Send, @
<^<!<+w::Send, ^
<^<!<+x::Send, |

#Include ./programs/programs.ahk



