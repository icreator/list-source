@echo off
::Включение отложенного расширения переменных среды
::позволяет использовать результаты изменения переменных внутри цикла, заключая их в воскл. знак (!)
setlocal EnableDelayedExpansion
::Задаем результирующий файл
set $out=C:\Users\adm\git\out.txt
::Маска поиска файлов
set $mask=*.java

::Если файл уже есть - удаляем
if exist "%$out%" del /f /q "%$out%"

set /a rf=1
 
::Выводим список файлов согласно указанной маске и делаем проход циклом по каждому найденному

goto filter

::Задаем размещение исходной папки
set $srcDir=C:\Users\adm\git\Erachain\src

for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem Сбрасываем счетчик кол-ва строк
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem Выводим состояние счетчика, пробел и строку, перенаправляя поток во внешний файл
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%

      rem  Добавляем 1
      set /a r+=1
      set /a rf+=1
    )
)

exit

:filter

::Задаем размещение исходной папки
set $srcDir=C:\Users\adm\git\Erachain\src\controller

for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem Сбрасываем счетчик кол-ва строк
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem Выводим состояние счетчика, пробел и строку, перенаправляя поток во внешний файл
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  Добавляем 1
      set /a r+=1
      set /a rf+=1
    )
)

set $srcDir=C:\Users\adm\git\Erachain\src\core
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem Сбрасываем счетчик кол-ва строк
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem Выводим состояние счетчика, пробел и строку, перенаправляя поток во внешний файл
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  Добавляем 1
      set /a r+=1
      set /a rf+=1
    )
)


beep
