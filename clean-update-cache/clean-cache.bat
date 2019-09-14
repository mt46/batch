@echo off
GOTO IntroComment
This script will clean Windows Update cache directory
Ref:
https://stackoverflow.com/questions/11269338/how-to-comment-out-add-comment-in-a-batch-cmd
https://ccm.net/faq/2471-how-to-purge-the-windows-update-cache
https://www.ghacks.net/2017/11/16/how-to-delete-downloaded-windows-update-files/
https://ss64.com/nt/cd.html
:IntroComment

:: Stop Windows update service
net stop wuauserv

:: Change to Cache directory
cd %Windir%\SoftwareDistribution

:: Delete cache files
del /f /s /q Download > %~dp0\clean.log

:: Change back to script directory
cd /d "%~dp0"

:: Start Windows update service
net start wuauserv