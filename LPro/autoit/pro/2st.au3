#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
Run("notepad.exe")
WinWaitActive("Безымянный — Блокнот") ; Win_7
Send("Это некоторый текст.")
WinClose("Безымянный — Блокнот") ; Win_7
WinWaitActive("Блокнот" , "Со&хранить")
Send("!н")