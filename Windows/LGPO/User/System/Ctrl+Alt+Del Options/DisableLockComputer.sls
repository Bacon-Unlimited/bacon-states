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
# LOCATION: \User\System\Ctrl+Alt+Del Options\DisableLockComputer.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from locking the system.
# 
# While locked, the desktop is hidden and the system cannot be used. Only the user who locked the system or the system administrator can unlock it.
# 
# If you enable this policy setting, users cannot lock the computer from the keyboard using Ctrl+Alt+Del.
# 
# If you disable or do not configure this policy setting, users will be able to lock the computer from the keyboard using Ctrl+Alt+Del.
# 
# Tip:To lock a computer without configuring a setting, press Ctrl+Alt+Delete, and then click Lock this computer.
Remove Lock Computer:
  lgpo.set:
  - name: DisableLockComputer
  - setting: Enabled
  - policy_class: User
