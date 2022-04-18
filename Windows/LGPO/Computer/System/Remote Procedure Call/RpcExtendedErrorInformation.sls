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
