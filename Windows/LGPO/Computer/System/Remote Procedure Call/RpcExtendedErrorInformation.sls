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
# LOCATION: \Computer\System\Remote Procedure Call\RpcExtendedErrorInformation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting controls whether the RPC runtime generates extended error information when an error occurs.
# 
# Extended error information includes the local time that the error occurred, the RPC version, and the name of the computer on which the error occurred, or from which it was propagated. Programs can retrieve the extended error information by using standard Windows application programming interfaces (APIs).
# 
# If you disable this policy setting, the RPC Runtime only generates a status code to indicate an error condition.
# 
# If you do not configure this policy setting, it remains disabled.  It will only generate a status code to indicate an error condition.
# 
# If you enable this policy setting, the RPC runtime will generate extended error information.  You must select an error response type in the drop-down box.
# 
# --  "Off" disables all extended error information for all processes. RPC only generates an error code.
# 
# --  "On with Exceptions" enables extended error information, but lets you disable it for selected processes. To disable extended error information for a process while this policy setting is in effect, the command that starts the process must begin with one of the strings in the Extended Error Information Exception field.
# 
# --  "Off with Exceptions" disables extended error information, but lets you enable it for selected processes. To enable extended error information for a process while this policy setting is in effect, the command that starts the process must begin with one of the strings in the Extended Error Information Exception field.
# 
# --  "On" enables extended error information for all processes.
# 
# Note: For information about the Extended Error Information Exception field, see the Windows Software Development Kit (SDK).
# 
# Note: Extended error information is formatted to be compatible with other operating systems and older Microsoft operating systems, but only newer Microsoft operating systems can read and respond to the information.
# 
# Note: The default policy setting, "Off," is designed for systems where extended error information is considered to be sensitive, and it should not be made available remotely.
# 
# Note: This policy setting will not be applied until the system is rebooted.
Propagate extended error information:
  lgpo.set:
  - name: RpcExtendedErrorInformation
  - setting:
      RpcExtErrorExceptions: text-placeholder
      RpcExtendedErrorInformationList: enum-placeholder
  - policy_class: Machine
