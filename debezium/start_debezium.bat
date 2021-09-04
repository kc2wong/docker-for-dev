@echo off
SETLOCAL
for /f "tokens=1 delims=:" %%j in ('ping %computername% -4 -n 1 ^| findstr Reply') do (
    set TEMP_IPADDR=%%j
)
set LOCAL_IPADDR=%TEMP_IPADDR:~11%
set DEBEZIUM_VERSION=1.6

docker compose -f docker-compose.yaml up

ENDLOCAL