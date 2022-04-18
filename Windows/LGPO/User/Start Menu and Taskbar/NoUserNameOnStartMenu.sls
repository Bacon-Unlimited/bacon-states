# windows:SUPPORTED_WindowsXPOrServerOnly
#
# This policy setting allows you to remove the user name label from the Start Menu in Windows XP and Windows Server 2003.
# 
# If you enable this policy setting, the user name label is removed from the Start Menu in Windows XP and Windows Server 2003.
# 
# To remove the user name folder on Windows Vista, set the "Remove user folder link from Start Menu" policy setting.
# 
# If you disable or do not configure this policy setting, the user name label appears on the Start Menu in Windows XP and Windows Server 2003.
Remove user name from Start Menu:
  lgpo.set:
  - name: NoUserNameOnStartMenu
  - setting: Enabled
  - policy_class: User
