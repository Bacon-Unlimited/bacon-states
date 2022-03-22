# windows:SUPPORTED_Windows7ToXP
#
# This policy setting allows you to remove the Music icon from Start Menu.
# 
# If you enable this policy setting, the Music icon is no longer available from Start Menu.
# 
# If you disable or do not configure this policy setting, the Music icon is available from Start Menu.
Remove Music icon from Start Menu:
  lgpo.set:
  - name: NoSMMyMusic
  - setting: Enabled
  - policy_class: User
