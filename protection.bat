@echo off
title Acceso a Apuntes Temabbo (LOCAL)
color 0A

:PASS
echo.
set /p "clave=Introduce la contrasena: "

REM La clave correcta
set "clave_correcta=Administrador@macOSTemabbo"

if /i "%clave%"=="%clave_correcta%" goto UNLOCK

:FAIL
echo.
echo ERROR: Contrasena incorrecta.
echo El acceso ha sido denegado.
pause > nul
goto END

:UNLOCK
echo.
echo ACCESO CONCEDIDO!
echo -----------------------------------------------------------------
REM Muestra el contenido del archivo secreto
type ApuntesTemabbo.txt
echo -----------------------------------------------------------------
echo.
echo [Presiona cualquier tecla para ocultar el contenido]
pause > nul

:END
exit
