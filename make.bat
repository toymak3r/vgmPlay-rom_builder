setlocal
call egcc.bat
pushd src
windres resource.rc -O coff -o ..\obj\resource.o  
set CFLAGS=%CCFLAGS2% -g -I..\OBJ -I..\LIB
set LFLAGS2= ..\obj\*.o  -limgLib -lwin32hlp -lexshit -lstdshit -lcomdlg32 -lgdi32 -lpsapi -lcomctl32 -lz
if "%1"=="rel" set LFLAGS2=%LFLAGS2% %LFLAGS% -mwindows
gcc *.cc %CFLAGS% %LFLAGS2% -o ..\bin\vgmPlay.exe 
popd
endlocal
