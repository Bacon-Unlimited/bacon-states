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
# LOCATION: \User\System\Scripts\Run_Legacy_Logon_Script_Hidden.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting hides the instructions in logon scripts written for Windows NT 4.0 and earlier. 
# 
# Logon scripts are batch files of instructions that run when the user logs on. By default, Windows 2000 displays the instructions in logon scripts written for Windows NT 4.0 and earlier in a command window as they run, although it does not display logon scripts written for Windows 2000.
# 
# If you enable this setting, Windows 2000 does not display logon scripts written for Windows NT 4.0 and earlier.
# 
# If you disable or do not configure this policy setting, Windows 2000 displays login scripts written for Windows NT 4.0 and earlier.
# 
# Also, see the "Run Logon Scripts Visible" setting.
Run legacy logon scripts hidden:
  lgpo.set:
  - name: Run_Legacy_Logon_Script_Hidden
  - setting: Enabled
  - policy_class: User
