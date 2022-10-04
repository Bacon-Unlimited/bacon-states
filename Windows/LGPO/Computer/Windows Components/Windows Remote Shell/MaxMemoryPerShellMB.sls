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
# LOCATION: \Computer\Windows Components\Windows Remote Shell\MaxMemoryPerShellMB.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum total amount of memory in megabytes that can be allocated by any active remote shell and all its child processes.
# 
# Any value from 0 to 0x7FFFFFFF can be set, where 0 equals unlimited memory, which means the ability of remote operations to allocate memory is only limited by the available virtual memory.
# 
# If you enable this policy setting, the remote operation is terminated when a new allocation exceeds the specified quota.
# 
# If you disable or do not configure this policy setting, the value 150 is used by default.
Specify maximum amount of memory in MB per Shell:
  lgpo.set:
  - name: MaxMemoryPerShellMB
  - setting:
      MaxMemoryPerShellMB: decimal-placeholder
  - policy_class: Machine
