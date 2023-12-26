#include <ScreenCapture.au3>
#include <GUIConstantsEx.au3>

#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Res_HiDpi=Y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

If Not (@Compiled ) Then DllCall("User32.dll","bool","SetProcessDPIAware")

$XamppScap = "C:\xampp\htdocs\myscap"
;$XamppScap = ""
 
 
 
 
GUIS()

 





Func GUIS()
        ; Create a GUI with various controls.
        Local $hGUI = GUICreate("Example", 300, 200)

        ; Create a button control.
        Local $idButton_Notepad = GUICtrlCreateButton("Run Notepad", 120, 170, 85, 25)
        Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)

        ; Display the GUI.
        GUISetState(@SW_SHOW, $hGUI)

        Local $iPID = 0

        ; Loop until the user exits.
        While 1
				Example()
                Switch GUIGetMsg()
                        Case $GUI_EVENT_CLOSE, $idButton_Close
                                ExitLoop

                        Case $idButton_Notepad
                                ; Run Notepad with the window maximized.
                                $iPID = Run("notepad.exe", "", @SW_SHOWMAXIMIZED)

                EndSwitch
        WEnd

        ; Delete the previous GUI and all controls.
        GUIDelete($hGUI)

        ; Close the Notepad process using the PID returned by Run.
        If $iPID Then ProcessClose($iPID)
EndFunc   ;==>Example


Func Example()
        ; Capture full screen
        _ScreenCapture_Capture($XamppScap & "\GDIPlus_Image1.jpg",0,0,@DesktopWidth,@DesktopHeight)

       ; ShellExecute($XamppScap & "\GDIPlus_Image1.jpg")

        ; Capture region
        ;_ScreenCapture_Capture($XamppScap & "\GDIPlus_Image2.jpg", 0, 0, 796, 596)

        ;ShellExecute($XamppScap & "\GDIPlus_Image2.jpg")
EndFunc   ;==>Example