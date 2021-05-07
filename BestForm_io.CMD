@echo off
cls
color 2
TITLE BestForm.io
echo Welcome to BestForm.io
color 4
SET /P nname=Please enter your Nickname: 
SET /P age=Please enter your Age:
SET /P country=Please Enter Your Country Code:(Like: IR=IRAN)
SET /P password=Please Enter Password:
SET /P repassword=Please ReEnter Your Password:
IF %password%==%repassword% (
echo Password is Correct
) else (
cls
echo Password and It's ReEntered Password does not match.Retry.
color 6
SET /P Retry1=Do You Want to Retry y/N? 
IF Retry1==y start "" "1 RUN ME 1.cmd"
pause
IF Retry1==N Exit
pause
)

SET /P email=Please Enter Your Email:

cls
color 5
ECHO ============================================
echo.
echo Your Info Is:
echo.
echo Nickname: %nname%
echo.
echo Age: %age%
echo.
GOTO Country
:Country
IF %country%==IR Echo Country: IRAN
IF %country%==US echo Counntry: USA
IF %country%==FR echo Country: France
IF %country%=="" echo User Has Not Entered Any Country Code.
:end

echo.
echo Password: %password% / %repassword% 
echo.
echo Email: %email%
echo.
echo.
echo ============================================
echo.
echo Thanks For Using BestForm.io , I Hope You Enjoy My Simple Coded CMD App.
echo Your Data Will Not Saved or Uploaded Any Server. 
timeout /t 5 /nobreak
GOTO Retry
echo.
:Rerty
cls
color 6
SET /P Retry=Do You Want to Retry y/N? 
IF Retry==y start "" "1 RUN ME 1.cmd"
IF Retry==N Exit

pause
:end