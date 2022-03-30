
'* Имя: Lab2.vbs
'* Язык: VBScript
'* Описание: лабораторная работы
'**********************************************************************************
Dim s
do
	WScript.StdOut.WriteLine "menu:"
	WScript.StdOut.WriteLine "----------------------------"
	WScript.StdOut.WriteLine "1. Author"
	WScript.StdOut.WriteLine "2. Archive"
	WScript.StdOut.WriteLine "3. Create the list of files"
	WScript.StdOut.WriteLine "4. exit"
	WScript.StdOut.WriteLine "----------------------------"
	s = WScript.StdIn.ReadLine
	Set WshShell = WScript.CreateObject("WScript.Shell")
	if (s="1") Then
		WScript.StdOut.WriteLine "Klevtsov Arseniy Olegovich, ITP-11"
	elseif (s="2") Then
    	set FSO=WScript.CreateObject("Scripting.FileSystemObject")
	    WScript.StdOut.Write "Input way to file: "
	    k=WScript.StdIn.ReadLine
	    WScript.StdOut.Write "Input file extension: "
	    r=WScript.StdIn.ReadLine
	    On Error Resume Next
	    Set objFSO = WScript.CreateObject("Scripting.FileSystemObject")
	    Set objFolder = objFSO.GetFolder(k)
	    Set files_col = objFolder.files
	    For each file_obj in files_col
	        if (FSO.GetExtensionName(k & "\" & file_obj)=r) Then
				f=FSO.GetFileName(k & "\" & file_obj)
	            WshShell.Run("C:\os\lab2\rar.bat "+ f + " " + k + ".rar")
    	    End if
    	Next
	elseif(s="3") Then
		WScript.StdOut.Write "Enter the folder name:"
		f = WScript.StdIn.ReadLine
		WshShell.Run("C:\os\lab2\file.bat " + f + " " + f + ".txt")
	End if
loop until (s="4") 

'************* Конец *********************************************
