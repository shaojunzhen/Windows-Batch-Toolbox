@echo off
title Toolbox   #Made by Shao Junzhen#
goto menu
:6
cls
echo        Usage Notes
echo 1.This toolbox is made by Shao Junzhen
echo 2.Press Enter after entering content
echo 3.This toolbox may crash unexpectedly
echo 4.This toolbox has many bugs, please use it with caution
echo 5.Some functions require administrator privileges
echo 6.Do not use the space bar (except for pressing any key to continue)
pause
goto menu
:menu
cls
echo  Hello, User
date /t  
echo                   Menu
echo 1.Computer Tools   2.Information Query   3.Attached Tools
echo 4.Usage Instructions   666.Exit
set/p cai=Please enter a number (1-4 666)£º
if %cai%==1 goto 2
if %cai%==2 goto 3
if %cai%==3 goto 4
if %cai%==4 goto 6
if %cai%==666 goto 666
echo User, incorrect input
pause
goto menu
:2
echo Enter 1 to open Magnifier 
echo Enter 2 to open Paint 
echo Enter 3 to open File Explorer 
echo Enter 4 to open Notepad
echo Enter 5 to open On-Screen Keyboard
echo Enter 6 to open Calculator
echo Enter 7 to open Control Panel
echo Enter 8 to open Computer Management
echo Enter 9 to open CMD
echo Enter 10 to open Remote Desktop Connection
echo Enter 11 to open Malicious Software Removal Tool
echo Enter 12 to open DirectX Diagnostic Tool
echo Enter 13 to open Local Group Policy Editor
echo Enter 14 to open Disk Cleanup
echo Enter 15 to return to Menu
set/p ca=Please enter a number (1-15)£º
if %ca%==1 goto 12
if %ca%==2 goto 22
if %ca%==3 goto 32
if %ca%==4 goto 42
if %ca%==5 goto 52
if %ca%==6 goto 62
if %ca%==7 goto 72
if %ca%==8 goto 82
if %ca%==9 goto 92
if %ca%==10 goto 102
if %ca%==11 goto 112
if %ca%==12 goto 122
if %ca%==13 goto 132
if %ca%==14 goto 142
if %ca%==15 goto menu
echo User, incorrect input
goto 2
:12
magnify
pause
goto menu
:22
mspaint
pause
goto menu
:32
explorer
pause
goto menu
:42
notepad
pause
goto menu
:52
osk
pause
goto menu
:62
calc
pause
goto menu
:72
control
pause
goto menu
:82
compmgmt.msc 
pause
goto menu
:92
start
pause
goto menu
:102
mstsc
pause
goto menu
:112
mrt
pause
goto menu
:122
dxdiag
pause
goto menu
:132
gpedit.msc
echo If the prompt pops up: 'gpedit.msc' is not recognized as an internal or external command,
echo operable program or batch file.
echo It means Local Group Policy Editor is not configured on your device
set/p msccc=Enter 1 to configure Local Group Policy Editor (requires administrator privileges) Enter 2 to return to Main Menu
if %msccc%==1 goto mscc
if %msccc%==2 goto menu
echo User, incorrect input
goto 132
:mscc
pushd "%~dp0"
dir /b %systemroot%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >gp.txt
dir /b %systemroot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>gp.txt
for /f %%i in ('findstr /i . gp.txt 2^>nul') do dism /online /norestart /add-package:"%systemroot%\servicing\Packages\%%i"
pause
goto menu
:142
cleanmgr
pause
goto menu
:3
echo Enter 1 to check local IP 
echo Enter 2 to check all IPs in LAN
echo Enter 3 to check current ports
echo Enter 4 to show processes 
echo Enter 5 to user management
echo Enter 6 to check detailed info of used Wi-Fi  
echo Enter 7 to check website IP
echo Enter 8 to show disk space
echo Enter 9 to show memory usage
echo Enter 10 to check detailed host info
echo Enter 11 to return to Menu
set/p c=Please enter a number (1-11)£º
if %c%==1 goto 13
if %c%==2 goto 23
if %c%==3 goto 33
if %c%==4 goto 43
if %c%==5 goto 53
if %c%==6 goto 63
if %c%==7 goto 73
if %c%==8 goto 83
if %c%==9 goto 93
if %c%==10 goto 103
if %c%==11 goto menu
echo User, incorrect input
goto 3
:13
ipconfig
pause
goto menu
:23
arp -a
pause
goto menu
:33
netstat
pause
goto menu
:43
tasklist
pause
goto menu
:53
net user
pause
goto menu
:63
echo Enter 1 to check all Wi-Fi profiles 
echo Enter 2 to check Wi-Fi detailed info
echo Enter 3 to return to Menu
set/p wlan=Please enter (1-3)£º
if %wlan%==1 goto profiles
if %wlan%==2 goto mima
if %wlan%==3 goto menu
echo User, incorrect input
goto 63
:profiles
netsh wlan show profiles
pause
goto menu
:mima
set/p wifiname=Please enter Wi-Fi name [Key info: Password]£º
netsh wlan show profiles name= %wifiname%  key=clear
pause
goto menu
:73
set /p wangzip=Enter website address£º
nslookup %wangzip%
pause
goto menu
:83
wmic logicaldisk get size,freespace
pause
goto menu
:93
wmic os get FreePhysicalMemory,TotalVisibleMemorySize
pause
goto menu
:103
systeminfo
pause
goto menu
:4
echo Enter 1 to Shutdown Options
echo Enter 2 to send messages in LAN (only supported for systems before Windows 7)
echo Enter 3 to change color
echo Enter 4 to open website or file path
echo Enter 5 to change date
echo Enter 6 to change time
echo Enter 7 to modify login password (requires administrator privileges)
echo Enter 8 to generate random number
echo Enter 9 to open countdown timer
echo Enter 10 to delete specified file
echo Enter 11 to repair disk (requires administrator privileges)
echo Enter 12 to clear cache
echo Enter 13 to ping target host
echo Enter 14 to view all files in computer
echo Enter 15 to repair system files (requires administrator privileges)
echo Enter 16 to end specified process
echo Enter 17 to return to Menu
set/p c4=Please enter a number (1-17)£º
if %c4%==1 goto 14
if %c4%==2 goto 24
if %c4%==3 goto 34
if %c4%==4 goto 44
if %c4%==5 goto 54
if %c4%==6 goto 64
if %c4%==7 goto 74
if %c4%==8 goto 84
if %c4%==9 goto 94
if %c4%==10 goto 104
if %c4%==11 goto 114
if %c4%==12 goto 124
if %c4%==13 goto 134
if %c4%==14 goto 144
if %c4%==15 goto 154
if %c4%==16 goto 164
if %c4%==17 goto menu
echo User, incorrect input
pause
goto 4
:14
echo Enter 1 to shutdown with countdown 
echo Enter 2 to restart with countdown  
echo Enter 3 to sleep with countdown  
echo Enter 4 to cancel shutdown/restart/sleep  
echo Enter 5 to return to Menu
set/p guanji=Please enter a number (1-5)£º
if %guanji%==1 goto 11111
if %guanji%==2 goto 22222 
if %guanji%==3 goto 33333
if %guanji%==4 goto 44444
if %guanji%==5 goto menu
echo User, incorrect input
goto 4
:11111
set/p time=Please enter countdown time [seconds]£º
shutdown -s -t %time%
echo User, the computer will shutdown in %time% seconds
pause
goto menu
:22222
set/p times=Please enter countdown time [seconds]£º
shutdown -r -t %times%
echo User, the computer will restart in %times% seconds
pause
goto menu
:33333
set/p timess=Please enter countdown time [seconds]£º
shutdown -h -t %timess%
echo User, the computer will sleep in %timess% seconds
pause
goto menu
:44444
shutdown -a
echo User, cancellation successful
pause
goto menu
:24
set/p ipname=Enter IP address£º
set/p message=Enter content£º
net send %ipname% %message%
pause
goto menu
:34
echo Color attributes are specified by two hexadecimal digits -- the first
echo for the background, the second for the foreground. Each digit
echo can be any of the following values:
echo 0 = Black       8 = Gray
echo 1 = Blue        9 = Light Blue
echo 2 = Green       A = Light Green
echo 3 = Aqua        B = Light Aqua 
echo 4 = Red         C = Light Red
echo 5 = Purple      D = Light Purple
echo 6 = Yellow      E = Light Yellow
echo 7 = White       F = Bright White
set/p col=Please enter the code (only numbers or letters)£º
color %col%
pause
goto menu
:44
set/p https=Please enter website or file path£º
start %https%
pause
goto menu
:54
date
echo Modification successful
pause
goto menu
:64
time
echo Modification successful
pause
goto menu
:74
set/p xiugmm=Please enter new password£º
net user Administrator %xiugmm%
echo Password is %xiugmm%
pause
goto menu
:84
set /p q=Please enter maximum value£º
set /a PUZZLE=%random%%%%q%
echo %PUZZLE%
pause
goto menu
:94
set/p q=Please enter time£º
timeout /t %q% /nobreak
color 17
color 07
echo Time's up
pause
goto menu
:104
set/p sc=Please enter file path£º
del %sc%
pause
goto menu
:114
set/p c=Enter disk letter (c-z):
chkdsk %c%: /f/r
pause
goto menu
:124
del %temp%
pause
goto menu
:134
set /p ipv4=Please enter target host IPv4:
ping %ipv4%
pause
goto menu
:144
dir /s
pause
goto menu
:154
sfc /scannow
pause
goto menu
:164
set /p process_name=Please enter the process name to end (e.g.: notepad.exe):
taskkill /f /im %process_name% 2>nul
if %errorLevel%== 0  echo Process ended successfully.
pause
goto menu
:666
exit