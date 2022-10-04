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
# LOCATION: \Computer\Network\TCPIP Settings\IPv6 Transition Technologies\Teredo_Default_Qualified.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to set Teredo to be ready to communicate, a process referred to as qualification. By default, Teredo enters a dormant state when not in use. The qualification process brings it out of a dormant state.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# This policy setting contains only one state:
# 
# Policy Enabled State: If Default Qualified is enabled, Teredo will attempt qualification immediately and remain qualified if the qualification process succeeds.
# 
Set Teredo Default Qualified:
  lgpo.set:
  - name: Teredo_Default_Qualified
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine
