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
# LOCATION: \Computer\System\Remote Assistance\RA_Options.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you customize warning messages.
# 
# The "Display warning message before sharing control" policy setting allows you to specify a custom message to display before a user shares control of his or her computer.
# 
# The "Display warning message before connecting" policy setting allows you to specify a custom message to display before a user allows a connection to his or her computer.
# 
# If you enable this policy setting, the warning message you specify overrides the default message that is seen by the novice.
# 
# If you disable this policy setting, the user sees the default warning message.
# 
# If you do not configure this policy setting, the user sees the default warning message.
Customize warning messages:
  lgpo.set:
  - name: RA_Options
  - setting:
      RA_Options_Connect_Message: text-placeholder
      RA_Options_Share_Control_Message: text-placeholder
  - policy_class: Machine
