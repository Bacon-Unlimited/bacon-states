# SUPPORTED_WIN7
#
# 
#         This policy setting enables logging of all PowerShell script input to the Microsoft-Windows-PowerShell/Operational event log. If you enable this policy setting,
#         Windows PowerShell will log the processing of commands, script blocks, functions, and scripts - whether invoked interactively, or through automation.
#         
#         If you disable this policy setting, logging of PowerShell script input is disabled.
#         
#         If you enable the Script Block Invocation Logging, PowerShell additionally logs events when invocation of a command, script block, function, or script
#         starts or stops. Enabling Invocation Logging generates a high volume of event logs.
#         
#         Note: This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
#       
Turn on PowerShell Script Block Logging:
  lgpo.set:
  - name: EnableScriptBlockLogging
  - setting:
      EnableScriptBlockInvocationLogging: boolean-placeholder
  - policy_class: User
