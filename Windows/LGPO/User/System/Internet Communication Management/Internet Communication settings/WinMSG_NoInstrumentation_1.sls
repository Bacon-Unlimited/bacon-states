# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNET
#
# This policy setting specifies whether Windows Messenger collects anonymous information about how Windows Messenger software and service is used.
# 
# With the Customer Experience Improvement program, users can allow Microsoft to collect anonymous information about how the product is used.  This information is used to improve the product in future releases.
# 
# If you enable this policy setting, Windows Messenger does not collect usage information, and the user settings to enable the collection of usage information are not shown.
# 
# If you disable this policy setting, Windows Messenger collects anonymous usage information, and the setting is not shown.
# 
# If you do not configure this policy setting, users have the choice to opt in and allow information to be collected.
Turn off the Windows Messenger Customer Experience Improvement Program:
  lgpo.set:
  - name: WinMSG_NoInstrumentation_1
  - setting: Enabled
  - policy_class: User
