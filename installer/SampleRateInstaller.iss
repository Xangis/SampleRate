; InnoSetup installer creation script for SampleRate.
; Change all references to C:\Users\Xangis\code to match your working directory.
;
; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SampleRate"
#define MyAppVersion "1.02"
#define MyAppPublisher "Jason Champion"
#define MyAppURL "https://github.com/Xangis/SampleRate"
#define MyAppExeName "SampleRate.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C4482A34-29DF-440A-BC63-4AFB79DD8450}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\SampleRate
DefaultGroupName=SampleRate
LicenseFile=C:\Users\Xangis\code\SampleRate\LICENSE.TXT
OutputDir=C:\Users\Xangis\code\SampleRate\installer
OutputBaseFilename=SampleRate1.02Setup
SetupIconFile=C:\Users\Xangis\code\SampleRate\SRCalc.ico
UninstallDisplayIcon={app}\SRCalc.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Xangis\code\SampleRate\SRCalc.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Xangis\code\SampleRate\Release\SampleRate.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Xangis\code\SampleRate\LICENSE.TXT"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "C:\Users\Xangis\code\SampleRate\installer\vcredist2010_x86.exe"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall

[Icons]
Name: "{group}\SampleRate"; Filename: "{app}\SampleRate.exe"; WorkingDir: "{app}"
Name: "{commondesktop}\SampleRate"; Filename: "{app}\SampleRate.exe"; Tasks: desktopicon; WorkingDir: "{app}"

[Run]
Filename: "{app}\vcredist2010_x86.exe"; Parameters: "/q"; WorkingDir: "{app}";  StatusMsg: "Installing Visual C++ 2010 Redistributable..."; Flags: waituntilterminated
Filename: "{app}\SampleRate.exe"; Description: "{cm:LaunchProgram,SampleRate}"; Flags: nowait postinstall skipifsilent
