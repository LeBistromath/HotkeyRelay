
; Save the DLL in the code and load it

; Load the DLL


; Load the properties
; TODO : do we really want to go there ?

; Show and configure the tray Icon


; Set the Hotkey(s)
HotKeySet("{F9}", openRelay)

; Loop indefinetly to keep the hotkey active
While 1
    Sleep(100)
WEnd


; = = = = = FUNCTIONS = = = = =

; Function called when pressing the hotkey
Func openRelay()
	; Close the relay circuit
	Run("hidusb.exe ON 1", "", @SW_HIDE)

	; Wait
	Sleep(200)

	; Re-open the relay
	Run("hidusb.exe OFF 1", "", @SW_HIDE)

EndFunc


