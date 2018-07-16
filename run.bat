E:
cd "E:\AutoBackupDatabase\"
cd upload
DEL /s *.7z
cd ..
call sqlbackup.bat
Powershell.exe -ExecutionPolicy Unrestricted -File "E:\AutoBackupDatabase\autoupload.ps1"