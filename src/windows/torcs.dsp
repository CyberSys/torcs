# Microsoft Developer Studio Project File - Name="torcs" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=torcs - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "torcs.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "torcs.mak" CFG="torcs - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "torcs - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "torcs - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "torcs - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G5 /W4 /GX /O2 /Ob2 /I "runtime\include" /I "../../export/include" /I "../interfaces" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# SUBTRACT CPP /WX
# ADD BASE RSC /l 0x40c /d "NDEBUG"
# ADD RSC /l 0x40c /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib torcs.lib tgf.lib libpng1.lib txml.lib /nologo /subsystem:console /pdb:none /map /machine:I386 /out:"Release/wtorcs.exe" /libpath:"../../export/lib"
# Begin Special Build Tool
WkspDir=.
TargetDir=.\Release
SOURCE="$(InputPath)"
PostBuild_Desc=exports
PostBuild_Cmds=copy $(TargetDir)\wtorcs.exe $(WkspDir)\runtime
# End Special Build Tool

!ELSEIF  "$(CFG)" == "torcs - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /G5 /MDd /W4 /WX /Gm /Gi /GX /ZI /Od /I "../../export/include" /I "../interfaces" /I "../libs/torcs" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0x40c /d "_DEBUG"
# ADD RSC /l 0x40c /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib tgf.lib libpng.lib txml.lib /nologo /subsystem:console /map /debug /machine:I386 /libpath:"../../export/libd"
# SUBTRACT LINK32 /pdb:none /incremental:no
# Begin Special Build Tool
WkspDir=.
TargetDir=.\Debug
SOURCE="$(InputPath)"
PostBuild_Desc=exports
PostBuild_Cmds=copy $(TargetDir)\torcs.exe $(WkspDir)\runtimed
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "torcs - Win32 Release"
# Name "torcs - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\libs\torcs\driverconfig.cpp
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\entry.cpp
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\exitmenu.cpp
# End Source File
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\mainmenu.cpp
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\optionmenu.cpp
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\raceman.cpp
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\splash.cpp
# End Source File
# Begin Source File

SOURCE=.\windowsspec.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\libs\torcs\driverconfig.h
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\exitmenu.h
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\mainmenu.h
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\optionmenu.h
# End Source File
# Begin Source File

SOURCE=.\osspec.h
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\raceman.h
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\splash.h
# End Source File
# Begin Source File

SOURCE=..\libs\torcs\torcs.h
# End Source File
# Begin Source File

SOURCE=.\windowsspec.h
# End Source File
# End Group
# End Target
# End Project
