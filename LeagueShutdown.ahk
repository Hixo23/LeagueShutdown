#Persistent
SetTimer, CheckForLoL, 1000 ; Checks every second if League of Legends is running

CheckForLoL:
Process, Exist, LeagueClientUx.exe
If ErrorLevel
{
    ; If League of Legends is running, shut down the computer
    Shutdown, 1 ; 1 indicates an immediate shutdown
}
Return
