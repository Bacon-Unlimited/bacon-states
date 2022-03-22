# windows:SUPPORTED_Windows7ToXP
#
# This policy setting allows you to remove the Pictures icon from Start Menu.
# 
# If you enable this policy setting, the Pictures icon is no longer available from Start Menu.
# 
# If you disable or do not configure this policy setting, the Pictures icon is available from Start Menu.
Remove Pictures icon from Start Menu:
  lgpo.set:
  - name: NoSMMyPictures
  - setting: Enabled
  - policy_class: User
