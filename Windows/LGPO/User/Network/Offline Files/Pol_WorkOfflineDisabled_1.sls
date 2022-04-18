# windows:SUPPORTED_Windows8
#
# This policy setting removes the "Work offline" command from Explorer, preventing users from manually changing whether Offline Files is in online mode or offline mode.
# 
# If you enable this policy setting, the "Work offline" command is not displayed in File Explorer.
# 
# If you disable or do not configure this policy setting, the "Work offline" command is displayed in File Explorer.
#       
Remove "Work offline" command:
  lgpo.set:
  - name: Pol_WorkOfflineDisabled_1
  - setting: Enabled
  - policy_class: User
