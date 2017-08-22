; VFPX Help File for Visual Foxpro 9SP2 = MS VFP9SP2 Help File Corrected : under Creative Commons Licensing
; Francis FAURE for VFPX 
[Setup]
AppName=VFP 9 SP2 Help file (VFPX Edition)
AppVerName=VFPX Help file - 1.08
AppPublisher=VFPX
AppVersion=1.08
AppPublisherURL=https://github.com/VFPX/HelpFile/
AppSupportURL=https://github.com/VFPX/HelpFile/issues
AppUpdatesURL=https://github.com/VFPX/HelpFile/
DefaultDirName={reg:HKLM\SOFTWARE\Microsoft\VisualFoxPro\9.0\Setup\VFP,ProductDir}
OutPutDir="."
OutputBaseFilename=dv_foxhelp_vfp9sp2_v1.08
AllowNoIcons=yes
DisableProgramGroupPage=yes
ShowLanguageDialog=yes
LicenseFile=licence.rtf
WizardImageFile=vfpXlogo.bmp
WizardImageStretch=no
WizardImageBackColor=$FFFFFF
DirExistsWarning=no

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:languages\French.isl"
Name: "de"; MessagesFile: "compiler:languages\German.isl"
Name: "es"; MessagesFile: "compiler:languages\Spanish.isl"
Name: "ru"; MessagesFile: "compiler:languages\Russian.isl"
Name: "cz"; MessagesFile: "compiler:languages\Czech.isl"

[Dirs]
Name: "{app}\backup_dv_foxhelp"

[Files]
; copy in folder "backup" before installation
Source: "{app}\dv_foxhelp.chm"; DestDir: "{app}\backup_dv_foxhelp"; Flags: external skipifsourcedoesntexist onlyifdoesntexist uninsneveruninstall
Source: "dv_foxhelp.chm"; DestDir:"{app}"

[Installdelete]
; by woody : delete the .chw
Type:files;     Name:"{app}\dv_foxhelp.chw";

