SET comment=%1
IF "%~1"=="" (	SET comment="Update code" )
\git\bin\git add .
\git\bin\git commit -m %comment%
\git\bin\git push