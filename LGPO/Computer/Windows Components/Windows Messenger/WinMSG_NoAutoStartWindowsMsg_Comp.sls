# windows:SUPPORTED_WindowsXP
#
# This policy setting prevents Windows Messenger from automatically running at logon. 
# 
# If you enable this policy setting, Windows Messenger is not loaded automatically when a user logs on.
# 
# If you disable or do not configure this policy setting, Windows Messenger will be loaded automatically at logon.
# 
# Note: This policy setting simply prevents Windows Messenger from running initially. If the user invokes and uses Windows Messenger from that point on, Windows Messenger will be loaded.
# 
# The user can also configure this behavior on the Preferences tab on the Tools menu in the Windows Messenger user interface.
# 
# Note: If you do not want users to use Windows Messenger, enable the "Do not allow Windows Messenger to run" policy setting.
# 
# Note: This policy setting is available under both Computer Configuration and User Configuration. If both are present, the Computer Configuration version of this policy setting takes precedence.
Do not automatically start Windows Messenger initially:
  lgpo.set:
  - name: WinMSG_NoAutoStartWindowsMsg_Comp
  - setting: Enabled
  - policy_class: Machine
