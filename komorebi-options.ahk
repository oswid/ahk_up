sleep, 20000


#SingleInstance Force

; Enable hot reloading of changes to this file
Run, komorebic.exe watch-configuration enable, , Hide

; Configure the invisible border dimensions
Run, komorebic.exe invisible-borders 7 0 14 7, , Hide

; Enable focus follows mouse
; Run, komorebic.exe focus-follows-mouse enable, , Hide

; Ensure there are 3 workspaces created on monitor 0
Run, komorebic.exe ensure-workspaces 0 4, , Hide

; Give the workspaces some optional names
Run, komorebic.exe workspace-name 0 0 bsp, , Hide
Run, komorebic.exe workspace-name 0 1 columns, , Hide
Run, komorebic.exe workspace-name 0 2 thicc, , Hide
Run, komorebic.exe workspace-name 0 3 matrix, , Hide
Run, komorebic.exe workspace-name 0 4 floaty, , Hide

; Set the padding of the different workspaces
Run, komorebic.exe workspace-padding 0 0 0, , Hide
Run, komorebic.exe container-padding 0 0 0, , Hide
Run, komorebic.exe workspace-padding 0 1 0, , Hide
Run, komorebic.exe container-padding 0 1 0, , Hide
Run, komorebic.exe workspace-padding 0 2 0, , Hide
Run, komorebic.exe container-padding 0 2 0, , Hide
Run, komorebic.exe workspace-padding 0 3 0, , Hide
Run, komorebic.exe container-padding 0 3 0, , Hide


; Set the layouts of different workspaces
Run, komorebic.exe workspace-layout 0 1 columns, , Hide

; Set the floaty layout to not tile any windows
Run, komorebic.exe workspace-tiling 0 4 disable, , Hide

; Always show chat apps on the second workspace
Run, komorebic.exe workspace-rule exe slack.exe 0 1, , Hide
Run, komorebic.exe workspace-rule exe Discord.exe 0 1, , Hide

; Always float IntelliJ popups, matching on class
Run, komorebic.exe float-rule class SunAwtDialog, , Hide
; Always float Control Panel, matching on title
Run, komorebic.exe float-rule title "Control Panel", , Hide
; Always float Task Manager, matching on class
Run, komorebic.exe float-rule class TaskManagerWindow, , Hide
; Always float Wally, matching on executable name
Run, komorebic.exe float-rule exe Wally.exe, , Hide
Run, komorebic.exe float-rule exe wincompose.exe, , Hide
; Always float Calculator app, matching on window title
Run, komorebic.exe float-rule title Calculator, , Hide
Run, komorebic.exe float-rule exe 1Password.exe, , Hide

; Always manage forcibly these applications that don't automatically get picked up by komorebi
Run, komorebic.exe manage-rule exe TIM.exe, , Hide

; Identify applications that close to the tray
Run, komorebic.exe identify-tray-application exe Discord.exe, , Hide

; Identify applications that have overflowing borders
Run, komorebic.exe identify-border-overflow exe Discord.exe, , Hide

; Change the focused window
<^<!<+x::
Run, komorebic.exe focus left, , Hide
return

<^<!<+z::
Run, komorebic.exe focus down, , Hide
return

<^<!<+0::
Run, komorebic.exe focus up, , Hide
return

<^<!<+y::
Run, komorebic.exe focus right, , Hide
return

; Move the focused window in a given direction, Alt + Shift + Vim direction keys
<^<!<#c::
Run, komorebic.exe move left, , Hide
return

<^<!<#b::
Run, komorebic.exe move down, , Hide
return

<^<!<#a::
Run, komorebic.exe move up, , Hide
return

<^<!<#d::
Run, komorebic.exe move right, , Hide
return

; Stack the focused window in a given direction, Alt + Shift + direction keys

<^<!<+8::
Run, komorebic.exe stack left, , Hide
return

<^<!<+7::
Run, komorebic.exe stack down, , Hide
return

<^<!<+6::
Run, komorebic.exe stack up, , Hide
return


<^<!<+9::
Run, komorebic.exe stack right, , Hide
return

<^<!<+4::
;Run, komorebic.exe cycle-stack next, , Hide
;return


<^<!<+3::
;Run, komorebic.exe cycle-stack previous, , Hide
;return

; Unstack the focused window, Alt + Shift + D
!+i::
Run, komorebic.exe unstack, , Hide
return

; Promote the focused window to the top of the tree, Alt + Shift + Enter

<^<!<+5::
Run, komorebic.exe promote, , Hide
return






; Toggle native maximize for the focused window, Alt + Shift + =
;<^<!<#h::
;Run, komorebic.exe toggle-maximize, , Hide
;return

; Flip horizontally
<^<!<#j::
Run, komorebic.exe flip-layout horizontal, , Hide
return

; Flip vertically
<^<!<#i::
Run, komorebic.exe flip-layout vertical, , Hide
return

<^<!<#e::WinClose,a
<^<!<#f::WinMinimize,a
<^<!<#h:: DllCall("LockWorkStation")
<^<!<#g::WinMaximize, A
; Switch to workspace
<^<!<+w::
Send !
Run, komorebic.exe focus-workspace 0, , Hide
return

<^<!<+v::
Send !
Run, komorebic.exe focus-workspace 1, , Hide
return

<^<!<+u::
Send !
Run, komorebic.exe focus-workspace 2, , Hide
return

<^<!<+t::
Send !
Run, komorebic.exe focus-workspace 3, , Hide
return

!5::
Send !
Run, komorebic.exe focus-workspace 4, , Hide
return

; Move window to workspace
!+1::
Run, komorebic.exe move-to-workspace 0, , Hide
return

!+2::
Run, komorebic.exe move-to-workspace 1, , Hide
return

!+3::
Run, komorebic.exe move-to-workspace 2, , Hide
return

!+4::
Run, komorebic.exe move-to-workspace 3, , Hide
return

!+5::
Run, komorebic.exe move-to-workspace 4, , Hide
return

