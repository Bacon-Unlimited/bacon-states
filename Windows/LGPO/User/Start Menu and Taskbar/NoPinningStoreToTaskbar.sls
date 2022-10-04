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
# LOCATION: \User\Start Menu and Taskbar\NoPinningStoreToTaskbar.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3
#
# 
# This policy setting allows you to control pinning the Store app to the Taskbar.
# 
# If you enable this policy setting, users cannot pin the Store app to the Taskbar. If the Store app is already pinned to the Taskbar, it will be removed from the Taskbar on next login.
# 
# If you disable or do not configure this policy setting, users can pin the Store app to the Taskbar.
Do not allow pinning Store app to the Taskbar:
  lgpo.set:
  - name: NoPinningStoreToTaskbar
  - setting: Enabled
  - policy_class: User
