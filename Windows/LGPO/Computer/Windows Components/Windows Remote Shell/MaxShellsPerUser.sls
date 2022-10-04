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
# LOCATION: \Computer\Windows Components\Windows Remote Shell\MaxShellsPerUser.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum number of concurrent shells any user can remotely open on the same system.
# 
# Any number from 0 to 0x7FFFFFFF cand be set, where 0 means unlimited number of shells.
# 
# If you enable this policy setting, the user cannot open new remote shells if the count exceeds the specified limit.
# 
# If you disable or do not configure this policy setting, by default the limit is set to two remote shells per user.
#       
Specify maximum number of remote shells per user:
  lgpo.set:
  - name: MaxShellsPerUser
  - setting:
      MaxShellsPerUser: decimal-placeholder
  - policy_class: Machine
