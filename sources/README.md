# ![](images/microsoft-html-help32.png) VFP 9 SP2 Help File
**The Visual FoxPro 9 SP2 Help file corrected, supported, and enhanced.**

![](images/hr-g.png)

Project Manager: [Francis FAURE](https://github.com/FrancisFaure)


# Source files

## You want to compile the "VFP9SP2 Help File" (dv_foxhelp.chm) **yourself**?

----------

* First: 
	- install [Microsoft HTML Help Workshop (htmlhelp.exe)](https://www.microsoft.com/en-us/download/details.aspx?id=21138) (free)

----------

* use GIT and "clone" on a local drive (~5000 files): https://github.com/VFPX/HelpFile/

![](images/git1.png)

![](images/git2.png)

* navigate in your local directory to **.\sources\dv_foxhelp\**
![](images/update_path.png)
	- update **compile_dv_foxhelp.cmd**: change HTML_HELP_WORKSHOP_DIR variable with the path to HHC.EXE 
		* by default : 
			- C:\Program Files (x86)\HTML Help Workshop on 64bits computer
			- C:\Program Files\HTML Help Workshop\ on 32bits computer
	- launch "**compile_dv_foxhelp.cmd**"

after few minutes, with no error, you will have the **dv_foxhelp.chm** file...

----------
