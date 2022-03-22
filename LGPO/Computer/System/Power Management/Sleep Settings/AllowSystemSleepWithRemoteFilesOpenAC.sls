# windows:SUPPORTED_Windows7
#
# This policy setting allows you to manage automatic sleep with open network files.
# 
# If you enable this policy setting, the computer automatically sleeps when network files are open.
# 
# If you disable or do not configure this policy setting, the computer does not automatically sleep when network files are open.
Allow automatic sleep with Open Network Files (plugged in):
  lgpo.set:
  - name: AllowSystemSleepWithRemoteFilesOpenAC
  - setting: Enabled
  - policy_class: Machine
