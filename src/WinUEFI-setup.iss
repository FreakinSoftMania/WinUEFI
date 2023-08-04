; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "WinUEFI"
#define MyAppVersion "1.9.4"
#define MyAppPublisher "FreakinSoftMania"
#define MyAppExeName "WinUEFI.exe"
#define MyAppAssocName MyAppName + ""
#define MyAppAssocExt ".exe"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2F162912-9BC1-4D7F-802B-8CA8BFF1467E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
OutputDir=D:\a\WinUEFI\WinUEFI\build\
ChangesAssociations=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=WinUEFI-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "appdesktopicon"; Description: "WinUEFI icon"; \
    GroupDescription: "{cm:AdditionalIcons}"
Name: "ueficondesktopicon"; Description: "WinUEFI Console icon"; \
    GroupDescription: "{cm:AdditionalIcons}"
Name: "uefi32desktopicon"; Description: "WinUEFI (32-bit) icon"; \
    GroupDescription: "{cm:AdditionalIcons}"
Name: "uefi32condesktopicon"; Description: "WinUEFI (32-bit) Console icon"; \
    GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "D:\a\WinUEFI\WinUEFI\build\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\a\WinUEFI\WinUEFI\build\WinUEFI-console.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\a\WinUEFI\WinUEFI\build\WinUEFI-x86.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\a\WinUEFI\WinUEFI\build\WinUEFI-x86-console.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autodesktop}\{#MyAppName}"; \
    Filename: "{app}\{#MyAppExeName}"; Tasks: appdesktopicon
Name: "{autodesktop}\WinUEFI Console"; \
    Filename: "{app}\WinUEFI-console.exe"; Tasks: ueficondesktopicon
Name: "{autodesktop}\WinUEFI (32-bit)"; \
    Filename: "{app}\WinUEFI-x86.exe"; Tasks: uefi32desktopicon
Name: "{autodesktop}\WinUEFI (32-bit) Console"; \
    Filename: "{app}\WinUEFI-x86-console.exe"; Tasks: uefi32condesktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent; Check: NoRunSwitch


[Code]
function NoRunSwitch: boolean;
var
  i: integer;
begin
  // Return TRUE to show the checkbox on the final page, return FALSE to hide it.
  Result := False; // In case there are no parameters
  for i := 1 to ParamCount do
  begin
    // Tweak the switch parsing to suit your needs here
    Result := not (UpperCase(ParamStr(i)) = '/NORUN');
    if not Result then break;
  end;
end;

