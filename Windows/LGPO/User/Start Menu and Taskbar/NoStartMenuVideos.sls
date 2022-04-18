# windows:SUPPORTED_Windows7Only
#
# This policy setting allows you to remove the Videos link from the Start Menu.
# 
# If you enable this policy setting, the Start Menu does not show a link to the Videos library.
# 
# If you disable or do not configure this policy setting, the Videos link is available from the Start Menu.
Remove Videos link from Start Menu:
  lgpo.set:
  - name: NoStartMenuVideos
  - setting: Enabled
  - policy_class: User
