@ECHO OFF
ECHO.

"C:\Program Files\PowerShell\7\"pwsh.exe -executionpolicy ByPass -File "C:\Program Files (x86)\ossec-agent\active-response\bin\windowsfirewall.ps1"

:Exit
