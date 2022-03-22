# windows:SUPPORTED_Windows7
#
# This policy setting allows you to remove Security and Maintenance from the system control area.
# 
# If you enable this policy setting, the Security and Maintenance icon is not displayed in the system notification area.
# 
# If you disable or do not configure this policy setting, the Security and Maintenance icon is displayed in the system notification area.
Remove the Security and Maintenance icon:
  lgpo.set:
  - name: HideSCAHealth
  - setting: Enabled
  - policy_class: User
