# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to remove the battery meter from the system control area.
# 
# If you enable this policy setting, the battery meter is not displayed in the system notification area.
# 
# If you disable or do not configure this policy setting, the battery meter is displayed in the system notification area.
Remove the battery meter:
  lgpo.set:
  - name: HideSCAPower
  - setting: Enabled
  - policy_class: User
