
'* Имя: Lab_2.vbs
'* Язык: VBScript
'* Описание: лабораторная работы
'**********************************************************************************
Dim s
do
	WScript.StdOut.WriteLine "menu:"
	WScript.StdOut.WriteLine "----------------------------"
	WScript.StdOut.WriteLine "1. Author"
	WScript.StdOut.WriteLine "2. Archive"
	WScript.StdOut.WriteLine "3. Create the list of folders"
	WScript.StdOut.WriteLine "4. exit"
	WScript.StdOut.WriteLine "----------------------------"

	s = WScript.StdIn.ReadLine
	Set WshShell = WScript.CreateObject("WScript.Shell")

	if (s="1") Then
		WScript.StdOut.WriteLine "Klevtsov Arseniy Olegovich, ITP-11"

	elseif(s="2") Then
		WScript.StdOut.Write "What to archieve:"
		f = WScript.StdIn.ReadLine
		WshShell.Run("C:\os\lab2\rar.bat "+ f + " " + f + ".rar")

	elseif(s="3") Then
		WScript.StdOut.Write "Gimme a folder:"
		f = WScript.StdIn.ReadLine
		WshShell.Run("C:\os\lab2\file.bat " + f + " " + f + ".txt")
	End if

loop until (s="4") 

'************* Конец *********************************************
