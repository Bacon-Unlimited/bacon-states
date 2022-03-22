# windows:SUPPORTED_Windows7Only
#
# This policy setting allows you to remove the Recorded TV link from the Start Menu.
# 
# If you enable this policy setting, the Start Menu does not show a link to the Recorded TV library.
# 
# If you disable or do not configure this policy setting, the Recorded TV link is available from the Start Menu.
Remove Recorded TV link from Start Menu:
  lgpo.set:
  - name: NoStartMenuRecordedTV
  - setting: Enabled
  - policy_class: User
