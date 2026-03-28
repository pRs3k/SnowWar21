; Snow-War v2.1 Installer Script
; Compile with NSIS (https://nsis.sourceforge.io/)
;
; To build:
; 1. Install NSIS from https://nsis.sourceforge.io/Download
; 2. Place this file in the repo root (next to the "snow" folder)
; 3. Right-click this file → "Compile NSIS Script"
;    OR run: makensis SnowWar_v21_Setup.nsi
; 4. Output: SnowWar_v21_Setup.exe

;--------------------------------
; General Settings
;--------------------------------

!include "MUI2.nsh"

Name "Snow-War v2.1"
OutFile "SnowWar_v21_Setup.exe"
InstallDir "C:\Sierra\Half-Life"
InstallDirRegKey HKLM "Software\Valve\Half-Life" "InstallPath"

RequestExecutionLevel user
SetCompressor /SOLID lzma

;--------------------------------
; Interface Settings
;--------------------------------

!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\classic-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\classic-uninstall.ico"

!define MUI_HEADERIMAGE
!define MUI_ABORTWARNING

!define MUI_WELCOMEPAGE_TITLE "Snow-War v2.1 Setup"
!define MUI_WELCOMEPAGE_TEXT "This will install Snow-War v2.1 on your computer.$\r$\n$\r$\nSnow-War is a multiplayer mod for Half-Life where players throw snowballs at each other in fast-paced deathmatch.$\r$\n$\r$\nCopyright (C) 2004 - Teemu Polvi & Snow-War Team$\r$\n$\r$\nPlease close Half-Life before continuing.$\r$\n$\r$\nClick Next to continue."

!define MUI_DIRECTORYPAGE_TEXT_TOP "Setup will install Snow-War v2.1 into your Half-Life directory. Please select your Half-Life installation folder below. This is the folder that contains hl.exe or hlds.exe.$\r$\n$\r$\nCommon locations:$\r$\n  C:\Sierra\Half-Life$\r$\n  C:\Program Files (x86)\Steam\steamapps\common\Half-Life$\r$\n  C:\HLServer"

!define MUI_FINISHPAGE_TITLE "Snow-War v2.1 Installed"
!define MUI_FINISHPAGE_TEXT "Snow-War v2.1 has been successfully installed.$\r$\n$\r$\nTo play:$\r$\n  1. Launch Half-Life$\r$\n  2. Click Custom Game$\r$\n  3. Select Snow-War$\r$\n  4. Click Activate$\r$\n$\r$\nFor dedicated servers, use:$\r$\n  hlds.exe -game snow +map sw_xmas$\r$\n$\r$\nHave fun throwing snowballs!"

;--------------------------------
; Pages
;--------------------------------

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "snow\license.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

;--------------------------------
; Language
;--------------------------------

!insertmacro MUI_LANGUAGE "English"

;--------------------------------
; Version Information
;--------------------------------

VIProductVersion "2.1.0.0"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "Snow-War"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "2.1"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "Snow-War Team"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "Copyright (C) 2004 Teemu Polvi & Snow-War Team"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "Snow-War v2.1 Installer"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "2.1"

;--------------------------------
; Installer Section
;--------------------------------

Section "Snow-War v2.1" SecMain
    SectionIn RO

    ; Verify this looks like a Half-Life directory
    IfFileExists "$INSTDIR\hl.exe" valid_dir
    IfFileExists "$INSTDIR\hlds.exe" valid_dir
    IfFileExists "$INSTDIR\valve" valid_dir
        MessageBox MB_YESNO|MB_ICONQUESTION "This doesn't appear to be a Half-Life directory (hl.exe, hlds.exe, or valve folder not found).$\r$\n$\r$\nInstall here anyway?" IDYES valid_dir
        Abort
    valid_dir:

    ; Install the snow folder and all contents
    SetOutPath "$INSTDIR\snow"
    File /r "snow\*.*"

    ; Write uninstaller
    WriteUninstaller "$INSTDIR\snow\uninstall_snowwar.exe"

    DetailPrint ""
    DetailPrint "Snow-War v2.1 installed successfully!"
    DetailPrint "Mod folder: $INSTDIR\snow"

SectionEnd

;--------------------------------
; Uninstaller Section
;--------------------------------

Section "Uninstall"
    ; Remove the snow folder
    RMDir /r "$INSTDIR"
SectionEnd
