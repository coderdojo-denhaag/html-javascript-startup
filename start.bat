cd \html-javascript-startup
@echo Installatie Visual Studio Code (duur ca. 1 minuut)
call installvs.bat

@echo Kopieer werkbestanden (duurt ca. 1 minuut)
.\tools\setdateenv.exe
set currentDate=%ERRORLEVEL%
md c:\CoderDojo-%currentDate%\javascript
xcopy \javascript c:\CoderDojo-%currentDate%\javascript /e

md c:\CoderDojo-%currentDate%\html
xcopy \html c:\CoderDojo-%currentDate%\html /e

md c:\CoderDojo-%currentDate%\start
xcopy \html-javascript-startup c:\CoderDojo-%currentDate%\start /e

c:
cd c:\CoderDojo-%currentDate%\start
start /b .\Launcher.exe intro.html

cd c:\CoderDojo-%currentDate%
"%LOCALAPPDATA%\Programs\Microsoft VS Code\code" c:\CoderDojo-%currentDate%