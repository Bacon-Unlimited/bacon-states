# windows:SUPPORTED_Windows_6_3
#
# This policy setting allows you to prevent users from replacing the Command Prompt with Windows PowerShell in the menu they see when they right-click the lower-left corner or press the Windows logo key + X.
# 
# If you enable this policy setting, the Command Prompt will always be listed in that menu, and users won't be able to replace it with Windows PowerShell. Users will still be able to access Windows PowerShell, but not from that menu.
# 
# If you disable or don't configure this policy setting, Command Prompt will be listed in the menu by default, and users can configure this setting.
? Prevent users from replacing the Command Prompt with Windows PowerShell in the menu
  they see when they right-click the lower-left corner or press the Windows logo key+X
: lgpo.set:
  - name: ShowCommandPromptOnWinX
  - setting: Enabled
  - policy_class: User
