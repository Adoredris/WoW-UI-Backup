set _SCRIPT_DRIVE=%~d0
set _SCRIPT_PATH=%~p0

SET drv=C
SET wow=Games\World of Warcraft
SET acc1=GRYPHON87
SET acc2=50042452#2
SET acc3=50042452#0
SET acc4=50042452#1
SET acc5=304145289#0

%drv%:
cd\%wow%\WTF\Account\%acc1%
rmdir "SavedVariables" /s /q
cd\%wow%\WTF\Account\%acc2%
rmdir "SavedVariables" /s /q
cd\%wow%\WTF\Account\%acc3%
rmdir "SavedVariables" /s /q
cd\%wow%\WTF\Account\%acc4%
rmdir "SavedVariables" /s /q
cd\%wow%\WTF\Account\%acc5%
rmdir "SavedVariables" /s /q

%_SCRIPT_DRIVE%
cd %_SCRIPT_PATH%
mklink /D "%drv%:/%wow%/WTF/Account/%acc1%/SavedVariables" "%_SCRIPT_DRIVE%%_SCRIPT_PATH%AccountSavedVariablesWhole"
mklink /D "%drv%:/%wow%/WTF/Account/%acc2%/SavedVariables" "%_SCRIPT_DRIVE%%_SCRIPT_PATH%AccountSavedVariablesWhole"
mklink /D "%drv%:/%wow%/WTF/Account/%acc3%/SavedVariables" "%_SCRIPT_DRIVE%%_SCRIPT_PATH%AccountSavedVariablesWhole"
mklink /D "%drv%:/%wow%/WTF/Account/%acc4%/SavedVariables" "%_SCRIPT_DRIVE%%_SCRIPT_PATH%AccountSavedVariablesWhole"
mklink /D "%drv%:/%wow%/WTF/Account/%acc5%/SavedVariables" "%_SCRIPT_DRIVE%%_SCRIPT_PATH%AccountSavedVariablesWhole"

PAUSE