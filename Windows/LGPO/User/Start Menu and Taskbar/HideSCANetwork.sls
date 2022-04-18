# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to remove the networking icon from the system control area.
# 
# If you enable this policy setting, the networking icon is not displayed in the system notification area.
# 
# If you disable or do not configure this policy setting, the networking icon is displayed in the system notification area.
Remove the networking icon:
  lgpo.set:
  - name: HideSCANetwork
  - setting: Enabled
  - policy_class: User
