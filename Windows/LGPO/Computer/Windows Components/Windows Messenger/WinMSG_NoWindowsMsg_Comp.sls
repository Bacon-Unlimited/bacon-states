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
# LOCATION: \Computer\Windows Components\Windows Messenger\WinMSG_NoWindowsMsg_Comp.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to prevent Windows Messenger from running.
# 
# If you enable this policy setting, Windows Messenger does not run.
# 
# If you disable or do not configure this policy setting, Windows Messenger can be used.
# 
# Note: If you enable this policy setting, Remote Assistance also cannot use Windows Messenger.
# 
# Note: This policy setting is available under both Computer Configuration and User Configuration. If both are present, the Computer Configuration version of this policy setting takes precedence.
Do not allow Windows Messenger to be run:
  lgpo.set:
  - name: WinMSG_NoWindowsMsg_Comp
  - setting: Enabled
  - policy_class: Machine
