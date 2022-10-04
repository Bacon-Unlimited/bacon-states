####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\System\DisallowApps.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents Windows from running the programs you specify in this policy setting.
# 
# If you enable this policy setting, users cannot run programs that you add to the list of disallowed applications.
# 
# If you disable this policy setting or do not configure it, users can run any programs.
# 
# This policy setting only prevents users from running programs that are started by the File Explorer process. It does not prevent users from running programs, such as Task Manager, which are started by the system process or by other processes.  Also, if users have access to the command prompt (Cmd.exe), this policy setting does not prevent them from starting programs in the command window even though they would be prevented from doing so using File Explorer.
# 
# Note: Non-Microsoft applications with Windows 2000 or later certification are required to comply with this policy setting.
# Note: To create a list of allowed applications, click Show.  In the Show Contents dialog box, in the Value column, type the application executable name (e.g., Winword.exe, Poledit.exe, Powerpnt.exe).
Don't run specified Windows applications:
  lgpo.set:
  - name: DisallowApps
  - setting:
      DisallowAppsList:
      - placeholder1
      - placeholder2
  - policy_class: User
