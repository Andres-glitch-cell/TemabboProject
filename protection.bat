@echo off
title Protector de Archivo TXT
:PASS
set /p "clave=Introduce la contrasena: "
if not "%clave%"=="TU_CONTRASEÑA" goto FAIL

echo Contenido del archivo secreto:
type secreto.txt
pause > nul

goto END

:FAIL
echo Contrasena incorrecta.
pause > nul
goto END

:END
exit