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
# LOCATION: \Computer\Control Panel\Personalization\CPL_Personalization_NoLockScreen.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting controls whether the lock screen appears for users.
# 
# If you enable this policy setting, users that are not required to press CTRL + ALT + DEL before signing in will see their selected tile after locking their PC.
# 
# If you disable or do not configure this policy setting, users that are not required to press CTRL + ALT + DEL before signing in will see a lock screen after locking their PC. They must dismiss the lock screen using touch, the keyboard, or by dragging it with the mouse.
Do not display the lock screen:
  lgpo.set:
  - name: CPL_Personalization_NoLockScreen
  - setting: Enabled
  - policy_class: Machine
