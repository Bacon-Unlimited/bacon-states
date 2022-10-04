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
# LOCATION: \User\Start Menu and Taskbar\NoSMMyDocuments.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7To2k
#
# This policy setting allows you to remove the Documents icon from the Start menu and its submenus.
# 
# If you enable this policy setting, the Documents icon is removed from the Start menu and its submenus. Enabling this policy setting only removes the icon. It does not prevent the user from using other methods to gain access to the contents of the Documents folder.
# 
# Note: To make changes to this policy setting effective, you must log off and then log on.
# 
# If you disable or do not configure this policy setting, he Documents icon is available from the Start menu.
# 
# Also, see the "Remove Documents icon on the desktop" policy setting.
Remove Documents icon from Start Menu:
  lgpo.set:
  - name: NoSMMyDocuments
  - setting: Enabled
  - policy_class: User
