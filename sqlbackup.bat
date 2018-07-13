sqlcmd -U <sqlsever username> -P <password sa sql sever> -S <Server name> -Q "EXEC sp_BackupDatabases  @backupLocation ='E:\AutoBackupDatabase\'"
E:
cd "E:\AutoBackupDatabase\"
goto start
:end 
echo Begin delete bak file please wait 5s.....
timeout 5
DEL /s "*.bak"
echo deleted bak file
echo finish program
goto :eof
:start
@echo off
if %1.==Sub. goto %2
for %%f in (*.bak) do call %0 Sub action %%~nf
goto end
:action
echo The file is %3
"c:\Program Files\7-Zip\7z.exe" a "%3.7z" "%3.bak"
xcopy "%3.7z" "E:\AutoBackupDatabase\upload"
