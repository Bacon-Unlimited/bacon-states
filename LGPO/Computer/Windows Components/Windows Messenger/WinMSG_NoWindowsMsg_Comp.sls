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
