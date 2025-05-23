@echo off
::Comprobar si el script se esta ejecutando como administrador.
net session >nul 2>&1
if %errorlevel% neq 0 (
	echo Ejecutando como administrador...
	powershell -Command "Start-Process '%~f0' -Verb runAs"
	exit /b
)

::Tu codigo con privilegios de administrador va aqui
echo Ahora estoy ejecutando como administrador
pause


::== es igual que
::NEQ es Distinto de !=
::LSS es Menor que <
::LEQ es Menor igual que <= 
::GTR es Mayor que >
::GEQ es Mayor igual que >=
::STDIN = 0
::STDOUT = 1
::STDERR = 2
::& = Redireccion  
