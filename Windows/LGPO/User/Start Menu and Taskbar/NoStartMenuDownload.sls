# windows:SUPPORTED_Windows7Only
#
# This policy setting allows you to remove the Downloads link from the Start Menu.
# 
# If you enable this policy setting, the Start Menu does not show a link to the Downloads folder.
# 
# If you disable or do not configure this policy setting, the Downloads link is available from the Start Menu.
Remove Downloads link from Start Menu:
  lgpo.set:
  - name: NoStartMenuDownload
  - setting: Enabled
  - policy_class: User
