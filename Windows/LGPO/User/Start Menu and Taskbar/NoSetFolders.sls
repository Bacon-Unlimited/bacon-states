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
# LOCATION: \User\Start Menu and Taskbar\NoSetFolders.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3To2k
#
# This policy setting allows you to remove programs on Settings menu.
# 
# If you enable this policy setting, the Control Panel, Printers, and Network and Connection folders are removed from Settings on the Start menu, and from Computer and File Explorer. It also prevents the programs represented by these folders (such as Control.exe) from running.
# 
# However, users can still start Control Panel items by using other methods, such as right-clicking the desktop to start Display or right-clicking Computer to start System.
# 
# If you disable or do not configure this policy setting, the Control Panel, Printers, and Network and Connection folders from Settings are available on the Start menu, and from Computer and File Explorer.
# 
# Also, see the "Disable Control Panel," "Disable Display in Control Panel," and "Remove Network Connections from Start Menu" policy settings.
Remove programs on Settings menu:
  lgpo.set:
  - name: NoSetFolders
  - setting: Enabled
  - policy_class: User
