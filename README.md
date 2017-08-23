# ![](images/microsoft-html-help32.png) VFP 9 SP2 Help File
**The Visual FoxPro 9 SP2 Help file corrected, supported, and enhanced.**

![](images/hr-g.png)

Project Manager: [Francis FAURE](https://github.com/FrancisFaure)

Ownership transfer of the VFP 9 SP2 Help file source code and rights to change from Microsoft to VFP Community via [Creative Commons licensing](http://creativecommons.org/licenses/by/3.0/).

What are the goals of this project?

1) Provide corrected VFP 9 SP2 Help file to the VFP Community. Corrections to the Help file include corrected index, corrected hyperlinks, and corrected stylesheet.

2) Allow the VFP Community to further enhance the Help file moving forward, adding missing content for VFP 9 SP2 and Sedna, making necessary corrections to existing examples, and repairing additional things missing in the index (like the SYS() functions).

[Download VFP9SP2 Help file Setup - VFPX edition version 1.08](https://github.com/VFPX/HelpFile/raw/master/setup/dv_foxhelp_vfp9sp2_v1.08.exe_signed.zip)

[Issues (Issues are used to track todos, bugs, feature requests, and more)](https://github.com/VFPX/HelpFile/issues)

[Setup.iss: Inno Setup Compiler source file, including dv_foxhelp.chm](https://github.com/VFPX/HelpFile/tree/master/Inno_Setup_Source)

----------

**History:**

* August 22, 2017 Version 1.08
	- VFP9 SP2 Help File project moved from codeplex to GitHub
	- All pages: VFPX URL links updated to GitHub in footers
	- VFPX Page: URL links updated to GitHub
	- VFPX Inno Setup script: URL links updated to GitHub
	- Inno Setup source files added
	- Source Files added
	- Setup signed

----------

* June 12, 2014 Version 1.07
	- All pages:
		- Removed: Javascript about Language management
		- Page Footer: mention "Enable Javascript for use this Help file" in red, if Javascript isn't enabled
	- Added in aLink Keywords:
		- ADD OBJECT to "DEFINE CLASS Command - ADD OBJECT Clause"
		- IMPLEMENTS to "DEFINE CLASS Command - IMPLEMENTS Clause"
	- Added in index:
		- ADD OBJECT Clause - DEFINE CLASS Command
		- IMPLEMENTS Clause - DEFINE CLASS Command
	- Removed from index:
		- "OPEN DATABASE commad" (Duplicate with "OPEN DATABASE Command" and writing mistake "commad")
		- "ON KEY LABEL assignment restore" (Linked on "POP KEY Command" and Duplicate with "ON KEY LABEL command"
		- "active page" (Duplicate with "Activepage")
		- SET CLASSLIB command (Duplicate)
	- Updated in Index :
		- "FIND Command (Visual FoxPro)" -> "FIND Command"
	- Pages updated:
		- "Character Functions"
		- TAGNO() Function
		- TAG() Function
		- SYS(14)
		- INDEX Command
		- HELP Index Manipulation Language
		- DECLARE - DLL Command
		- DISPLAY DLLS Command
		- LIST DLLS Command
		- ASCAN()
		- SYS(16)
		- SIN( ) Function
		- ASIN( ) Function
		- COS( ) Function
		- ACOS( ) Function
		- TAN( ) Function
		- ATAN( ) Function
		- ATN2( ) Function
		- DTOR( ) Function
		- RTOD( ) Function
		- CDX()
		- Backward-Compatible Language Elements
		- @ ... CLASS Command
		- @ ... CLEAR Command
		- @ ... FILL Command
		- @ ... SCROLL Command
		- System Menu Names	
		- ANSITOOEM() Function
		- OEMTONANSI() Function
		- VFPX - Undocumented SET SYSMENUS Command
		- VFPX - Undocumented SET BROWSEIMECONTROL Command
		- VFPX - page updated
	- Pages updated with documentation found in FoxPro for Windows 2.6 :
		- @ ... BOX Command
		- @ ... EDIT - Text Edit Regions Command / @ ... EDIT - Edit Boxes Command
		- @ ... GET Command / @ ... GET - Text Boxes Command
		- @ ... GET - Check Boxes Command / @ ... GET - Check Boxes Command
		- @ ... GET - Invisible Buttons Command / @ ... GET - Transparent Buttons Command
		- @ ... GET - Lists Command / @ ... GET - List Boxes Command
		- @ ... GET - Popups Command / @ ... GET - Combo Boxes Command
		- @ ... GET - Push Buttons Command / @ ... GET - Command Buttons Command
		- @ ... GET - Radio Buttons Command / @ ... GET - Option Buttons Command
		- @ ... GET - Spinners Command / @ ... GET - Spinners Command
		- @ ... MENU Command
		- @ ... PROMPT Command
		- @ ... SAY Command
		- @ ... SAY - BMPs & OLE Objects Command / @ ... SAY - Pictures & OLE Objects Command
		- @ ... TO Command
		- ACCEPT Command
		- ANSITOOEM() Function
		- ASSIST Command
		- CALL Command
		- COL() Function
		- CREATE SCREEN Command
		- CREATE SCREEN - Quick Screen Command
		- DEFINE BOX Command
		- FIND Command
		- INPUT Command
		- INSERT Command
		- JOIN Command
		- LOAD Command
		- MDOWN() Function
		- MENU Command
		- MENU TO Command
		- MODIFY SCREEN Command
		- OBJNUM() Function
		- OBJVAR() Function
		- OEMTOANSI() Function
		- ON KEY Command
		- ON KEY = Command
		- ON READERROR Command
		- RDLEVEL() Function
		- READ Command
		- READ MENU Command
		- READKEY() Function
		- ROW() Function
		- SET BORDER Command
		- SET BRSTATUS Command
		- SET CLEAR Command
		- SET COLOR OF Command
		- SET COLOR TO Command
		- SET DELIMITERS Command
		- SET DISPLAY Command
		- SET FORMAT Command
		- SET INTENSITY Command
		- SET WINDOW OF MEMO Command
		- SHOW GET Command
		- SHOW GETS Command
		- SHOW OBJECT Command
		- SYS(18) Current field/object Function / SYS(18) - Current Control
		- SYS(20) Transform German text Function
		- SYS(2016) SHOW GETS WINDOW Function / SYS(2016) - SHOW GETS WINDOW Name
		- SYS(23) EMS memory available Function / SYS(23) - FoxPro EMS Memory Usage
		- SYS(24) EMS memory limit Function / SYS(24) - EMS Memory Limit
		- UPDATE Command
		- UPDATED() Function
		- VARREAD() Function
		- WREAD() Function
		- _ALIGNMENT System Variable
		- _ASSIST System Variable
		- _BOX System Variable
		- _CUROBJ System Variable
		- _FOXDOC System Variable
		- _GENGRAPH System Variable
		- _GENPD System Variable
		- _GENSCRN System Variable
		- _GENXTAB System Variable
		- _INDENT System Variable
		- _LMARGIN System Variable
		- _PADVANCE System Variable
		- _PBPAGE System Variable
		- _PCOLNO System Variable
		- _PCOPIES System Variable
		- _PDRIVER System Variable
		- _PDSETUP System Variable
		- _PECODE System Variable
		- _PEJECT System Variable
		- _PEPAGE System Variable
		- _PLENGTH System Variable
		- _PLINENO System Variable
		- _PLOFFSET System Variable
		- _PPITCH System Variable
		- _PQUALITY System Variable
		- _PSCODE System Variable
		- _PSPACING System Variable
		- _PWAIT System Variable
		- _RMARGIN System Variable
		- _TABS System Variable
		- _TRANSPORT System Variable
		- _WRAP System Variable
	- Removed from TOC / Contents:
		- Move "READ Command" -> Backward-Compatible Language Elements
		- Move "@ ... CLASS Command" -> Backward-Compatible Language Elements
		- Move "@ ... CLEAR Command" -> Backward-Compatible Language Elements
		- Move "@ ... FILL Command" -> Backward-Compatible Language Elements
		- Move "@ ... SCROLL Command" -> Backward-Compatible Language Elements
		- Move "WREAD() Function" -> Backward-Compatible Language Elements

----------

* May 2, 2011 Version 1.06
	- All pages:
		- Corrected: Style of block "code" (margin & padding)
		- Removed: Combobox on top of each page "Language Filter  (All / VB / C# / C++ / J# / JScript")
		- Page Footer
	- Added in aLink Keywords:
		- now, each page has an "aLink keywords" on the Title of the page (for calling directly in VFP with HELP Title...)
	- Added in index:
		- error messages "numerical order", "Error Messages Listed Numerically"	- double click on "error messages", added "Error Messages Listed Numerically"
		- double click on "double-byte characters", added "ATCC( ) function"	- double click on "double-byte characters", "Application Creation with Double-Byte Character Sets"
	- Pages added:
		- VFPX: List "Add and Updates" in VFP 9 SP2 Help file
		- SET DIRECTORY Command
		- DBALIAS( ) Function
		- Error 2202 Buffer manager internal consistency error
		- Error 2203 Insufficient GDI resources
		- FLDCOUNT( ) Function
		- PADPROMPT( ) Function
		- WINDOW( ) Function
	- Pages updated:
		- AT_C( ) Function
		- ATCC() function
		- ADIR( ) Function
		- Backward-Compatible Language Elements
		- DBC( ) Function
		- DEBUG Command
		- DEBUGOUT Command
		- Error Messages Listed Alphabetically: added buttons list in header
		- Error Messages Listed Alphabetically: added errors 2202 and 2203
		- Error Messages Listed Numerically: added buttons list in header
		- Error Messages Listed Numerically: added errors 2202 and 2203
		- FILE( ) Function
		- FontCharSet Property
		- IMESTATUS( ) Function
		- LIKEC() function
		- LOADPICTURE( ) Function
		- NOTE Command
		- PictureVal Property
		- RATC( ) Function
		- RIGHT( ) Function
		- RIGHTC( ) Function
		- SET Command Overview
		- SET DATABASE Command
		- SET DOHISTORY Command
		- SET ECHO Command
		- SET STEP Command
		- SET( ) Function
		- STREXTRACT( ) Function bracket removed
		- STRTRAN( ) Function
		- SUBSTR( ) Function
		- SUBSTRC( ) Function
		- SYS( ) Functions Overview
		- SYS(2029)
		- SYS(2325)
		- Table File Structure (.dbc, .dbf, .frx, .lbx, .mnx, .pjx, .scx, .vcx)
		- TXNLEVEL( ) Function
		- VERSION( ) Function
		- VFPX Page
	- Added in TOC / Contents:
		- DBALIAS( ) Function
		- FLDCOUNT( ) Function   
		- PADPROMPT( ) Function 
		- SET DIRECTORY Command
		- SET DOHISTORY Command (moved)
		- VFPX Topic
		- WINDOW( ) Function (Backward-Compatible Language Elements)
	- Installation :
		- Inno Setup: now deletes the "dv_foxhelp.chw" file

----------

* February 18, 2009 Version 1.05
	- Added in index:
		- PADL() -> "PADL( ) | PADR( ) | PADC( ) Functions"
		- PADR() -> "PADL( ) | PADR( ) | PADC( ) Functions"
		- PADC() -> "PADL( ) | PADR( ) | PADC( ) Functions"
		- all the "SYS(....)"
		- all the "How To: ..."
	- Added in aLink Keywords:
		- HELP PADL	-> "PADL( ) | PADR( ) | PADC( ) Functions"
		- HELP PADR	-> "PADL( ) | PADR( ) | PADC( ) Functions"
		- HELP PADC	-> "PADL( ) | PADR( ) | PADC( ) Functions"
		- HELP ERROR	-> "Error Messages Listed Alphabetically" 
		- HELP ERROR	-> "Error Messages Listed Numerically"
		- HELP SYS 	-> "SYS( ) Functions Overview"
		- HELP LIST	-> "LIST Commands" + "List Propert"
		- HELP CLEAR	-> "CLEAR Commands" + "Clear Method"
		- HELP CD 	-> "CD | CHDIR Command"
		- HELP CHDIR	-> "CD | CHDIR Command"
		- HELP MD 	-> "MD | MKDIR command"
		- HELP MKDIR 	-> "MD | MKDIR command"
		- HELP RD	-> "RD | RMDIR command"
		- HELP RMDIR	-> "RD | RMDIR command"
		- HELP GO	-> "GO | GOTO Command"
		- HELP GOTO	-> "GO | GOTO Command"
	- Changed in aLink Keywords:
		- HELP UPDATE	-> Before on "UPDATE Command" 	-> now on "UPDATE SQL"
		- HELP INSERT	-> Before on "INSERT Command" 	-> now on "INSERT SQL"
		- HELP DELETE 	-> "DELETE Command" + "DELETE SQL" 
		- HELP SELECT 	-> "SELECT Command" + "SELECT SQL" 
	- Added in index (popup list choice):
		- ComboBox control -> "ComboBox Control Properties, Methods, and Events"
		- CheckBox control -> "CheckBox Control Properties, Methods, and Events"

----------

* February 16, 2009 Version 1.04
	- First public Version
