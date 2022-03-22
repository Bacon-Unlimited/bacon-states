# windows:SUPPORTED_Windows7To2k
#
# This policy setting allows you to remove the Help command from the Start menu.
# 
# If you enable this policy setting, the Help command is removed from the Start menu.
# 
# If you disable or do not configure this policy setting, the Help command is available from the Start menu.
# 
# This policy setting only affects the Start menu. It does not remove the Help menu from File Explorer and does not prevent users from running Help.
Remove Help menu from Start Menu:
  lgpo.set:
  - name: NoHelp
  - setting: Enabled
  - policy_class: User
