# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to remove the volume control icon from the system control area.
# 
# If you enable this policy setting, the volume control icon is not displayed in the system notification area.
# 
# If you disable or do not configure this policy setting, the volume control icon is displayed in the system notification area.
Remove the volume control icon:
  lgpo.set:
  - name: HideSCAVolume
  - setting: Enabled
  - policy_class: User
