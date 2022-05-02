@echo off
cls
color 2
TITLE BestForm.io
echo Welcome to BestForm.io
echo This is just example of a form in cmd.
echo you can get data via using "ftp" command.
color 4
SET /P nname=Please enter your Nickname: 
SET /P age=Please enter your Age:
SET /P country=Please Enter Your Country Code:(Like: IR=IRAN)
SET /P password=Please Enter Password:
SET /P repassword=Please ReEnter Your Password:
IF %password%==%repassword% (
echo Passwords are matching!
) else (
cls
echo Password and Re-Entered Password does not match. Retry.
color 6
SET /P Retry1=Do You Want to Retry y/n? 
IF Retry1==y start "" "BestForm_io.cmd"
pause
IF Retry1==n Exit
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
IF %country%==US echo Counntry: United Stats
IF %country%==FR echo Country: France
IF %country%==GR echo Country: Germany
IF %country%==UK echo Country: United Kingdom
IF %country%==BR echo Country: Brazil
IF %country%==RU echo Country: Russia

IF %country%=="" echo User Has Not Entered Any Country Code.
:end

echo.
echo Password: %password% / %repassword% 
echo.
echo Email: %email%
echo.
echo.
// ftp open
// ftp ...
// Use ftp to actually get data from user.
echo ============================================
echo.
echo Thanks For Using BestForm.io , I Hope You Enjoy My Simple App.
echo Your Data Will Not Saved or Uploaded Anywhere.
timeout /t 5 /nobreak
GOTO Retry
echo.
:Rerty
cls
color 6
set Retry=n
SET /P Retry=Do You Want to Retry y/n (default: n)? 
IF Retry==y start "" "BestForm_io.cmd"
IF Retry==n Exit

pause
:end