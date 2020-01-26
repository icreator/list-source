@echo off
::��������� ����������� ���������� ���������� �����
::��������� ������������ ���������� ��������� ���������� ������ �����, �������� �� � �����. ���� (!)
setlocal EnableDelayedExpansion
::������ �������������� ����
set $out=C:\Users\adm\git\out.txt
::����� ������ ������
set $mask=*.java

::���� ���� ��� ���� - �������
if exist "%$out%" del /f /q "%$out%"

set /a rf=1
 
::������� ������ ������ �������� ��������� ����� � ������ ������ ������ �� ������� ����������

goto filter

::������ ���������� �������� �����
set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%

      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

exit

:filter

::������ ���������� �������� �����
set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\controller
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\core
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\database
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\gui
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\lang
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)


set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\network
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

set $srcDir=C:\Users\adm\git\ARONICLE\ERA\src\webserver
for /f "delims=" %%i in ('dir "%$srcDir%\%$mask%" /s /b /a:-d') do (
  rem ���������� ������� ���-�� �����
  set /a r=1
  ::@echo !rf! %%i
  echo.  >>"%$out%
  ::echo.  %%i-------------->>"%$out%
  echo.  %%i
    for /f "usebackq delims=" %%a in ("%%i") do (
      rem ������� ��������� ��������, ������ � ������, ������������� ����� �� ������� ����
      ::echo.!rf!.!r! %%a>>"%$out%
      echo.%%a>>"%$out%
      rem  ��������� 1
      set /a r+=1
      set /a rf+=1
    )
)

beep