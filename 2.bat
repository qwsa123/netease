reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v CmdLine /t REG_SZ /d c:/1.bat /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupType /t REG_DWORD /d 1 /f