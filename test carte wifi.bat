REM Ce fichier batch permet de vérifier que votre carte WiFi est compatible pour le réseau hébergé.
@echo off
netsh wlan show drivers | findstr /c:"Hosted network supported  : Yes" >nul
if %errorlevel%==0 (
    echo Hosted network supported
) else (
    echo "Le programme ne peut pas s'executer correctement car votre ordinateur ne prend pas en charge la fonctionnalite de reseau heberge."
    echo Le réseau heberge n'est pas pris en charge
)
pause
exit
