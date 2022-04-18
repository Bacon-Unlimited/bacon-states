# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off File History.
# 
# If you enable this policy setting, File History cannot be activated to create regular, automatic backups.
# 
# If you disable or do not configure this policy setting, File History can be activated to create regular, automatic backups.
Turn off File History:
  lgpo.set:
  - name: DisableFileHistory
  - setting: Enabled
  - policy_class: Machine
