@echo off
::Включение отложенного расширения переменных среды
::позволяет использовать результаты изменения переменных внутри цикла, заключая их в воскл. знак (!)
setlocal EnableDelayedExpansion

set app=ErachainIJ

::Задаем результирующий файл
set $out=C:\Users\adm\git\out-%app%.txt
::Маска поиска файлов
set $mask=*.java

::Если файл уже есть - удаляем
if exist "%$out%" del /f /q "%$out%"

set /a rf=1
 
::Выводим список файлов согласно указанной маске и делаем проход циклом по каждому найденному

:: Если нужно сделать листинг отдельных паппок то включим тут переход и внизу отдельно задаем пути
rem goto filter

::Задаем размещение исходной папки
set $srcDir=C:\Users\adm\git\%app%\src

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

goto exit

:: Если необходимо можно по разным папкам пройтись
:filter

::Задаем размещение исходной папки
set $srcDir=C:\Users\adm\git\%app%\src\controller

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

set $srcDir=C:\Users\adm\git\%app%\src\core
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

:exit

beep
