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
