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
# LOCATION: \User\Start Menu and Taskbar\NoPinningToTaskbar.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control pinning programs to the Taskbar.
# 
# If you enable this policy setting, users cannot change the programs currently pinned to the Taskbar. If any programs are already pinned to the Taskbar, these programs continue to show in the Taskbar. However, users cannot unpin these programs already pinned to the Taskbar, and they cannot pin new programs to the Taskbar.
# 
# If you disable or do not configure this policy setting, users can change the programs currently pinned to the Taskbar.
Do not allow pinning programs to the Taskbar:
  lgpo.set:
  - name: NoPinningToTaskbar
  - setting: Enabled
  - policy_class: User
