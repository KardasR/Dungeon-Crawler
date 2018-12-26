@echo off
title 'My Game'
color 0A
if "%1" neq "" ( goto %1)
pause
:'Menu'
cls
echo '1. Start'
echo '2. Instructions'
echo '3. Exit'
set /p answer='Type the number of your option and press enter.'
if %answer%==1 goto 'Start_1'
if %answer%==2 goto 'Instructions'
if %answer%==3 goto 'Exit'
:'Exit'
echo Thanks for playing !
exit /b
:'Instructions'
cls
echo 'Instructions'
echo.
echo 'There will be instructions here maybe'
pause
goto 'Menu'
:'Start_1'
cls
echo 'You are met by Security Goblins. Their forces are:'
echo '3 Security Goblins'
echo 'You have a high chance of winning.'
set /p answer='Would you like to Fight or Sneak?'
if %answer%==Fight goto 'Fight_1'
if %answer%==Sneak goto 'Sneak_1'
:'Sneak_1'
cls
echo You have waited for them to pass .
pause
goto 'Start_1'
:'Fight_1'
echo You have choosen to fight.
echo You take on the enemys one at a time.
set /p answer= Type number 1 and press Enter to continue:
if %answer%==1 goto 'Fight_1_Loop'
:'Fight_1_Loop'
set /a num=%random%
if %num%==1 goto 'Lose_Fight_1'
if %num%==2 goto 'Win_Fight_1'
if %num%==3 goto 'Win_Fight_1'
if %num%==4 goto 'Win_Fight_1'
:'Lose_Fight_1
cls
echo Sorry, you got Killed. :/
pause
goto Menu
:'Win_Fight_1'
cls
echo Congrats, you knocked him out
set /p answer='Would you like to save?'
if %answer%=='Yes' goto 'Save'
if %answer%=='No' goto 'Fight_2'
:'Save'
echo Saving . . .
goto 'Fight_2'
:'Fight_2'
echo Here comes the next one.
set /p answer= Type number 1 and press Enter to continue:
if %answer%==1 goto 'Fight_2_Loop'
:'Fight_2_Loop'
set /a num=%random%
if %num%==1 goto 'Win_Fight_2'
if %num%==2 goto 'Win_Fight_2'
if %num%==3 goto 'Win_Fight_2'
if %num%==4 goto 'Win_Fight_2'
:'Lose_Fight_2'
cls
echo Sorry, you got Killed. :/
pause
goto 'Menu'
:'Win_Fight_2'
cls
echo Congrats, you knocked him out
set /p answer='Would you like to save?'
if %answer%=='Yes' goto 'Save_2'
if %answer%=='No' goto 'Fight_3'
:'Save_2'
echo Saving . . .
goto 'Fight_3'
:'Fight_3'
echo Here comes the last one.
set /p answer= Type number 1 and press Enter to continue:
if %answer%==1 goto 'Fight_3_Loop'
:'Fight_3_Loop'
set /a num=%random%
if %num%==1 goto 'Win_Fight_3'
if %num%==2 goto 'Win_Fight_3'
if %num%==3 goto 'Win_Fight_3'
if %num%==4 goto 'Win_Fight_3'
:'Lose_Fight_3'
cls
echo Sorry, you got Killed. :/
pause
goto 'Menu'
:'Win_Fight_3'
cls
echo Congrats, you knocked him out
set /p answer='Would you like to save?'
if %answer%=='Yes' goto 'Save_3'
if %answer%=='No' goto 'Start_2'
:'Save_3'
goto 'Start_2'
:'Start_2'
echo Congrats! You have coded this correctly ! ! ! !




