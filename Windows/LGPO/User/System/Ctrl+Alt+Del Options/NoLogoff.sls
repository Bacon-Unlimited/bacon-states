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
# LOCATION: \User\System\Ctrl+Alt+Del Options\NoLogoff.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting disables or removes all menu items and buttons that log the user off the system.
# 
# If you enable this policy setting, users will not see the Log off menu item when they press Ctrl+Alt+Del. This will prevent them from logging off unless they restart or shutdown the computer, or clicking Log off from the Start menu.
# 
# Also, see the 'Remove Logoff on the Start Menu' policy setting.
# 
# If you disable or do not configure this policy setting, users can see and select the Log off menu item when they press Ctrl+Alt+Del.
Remove Logoff:
  lgpo.set:
  - name: NoLogoff
  - setting: Enabled
  - policy_class: User
