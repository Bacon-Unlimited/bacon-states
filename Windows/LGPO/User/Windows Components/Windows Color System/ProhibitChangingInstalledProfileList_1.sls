# windows:SUPPORTED_WindowsVista
#
# This policy setting affects the ability of users to install or uninstall color profiles.
# 
# If you enable this policy setting, users cannot install new color profiles or uninstall previously installed color profiles.
# 
# If you disable or do not configure this policy setting, all users can install new color profiles. Standard users can uninstall color profiles that they previously installed. Administrators will be able to uninstall all color profiles.
Prohibit installing or uninstalling color profiles:
  lgpo.set:
  - name: ProhibitChangingInstalledProfileList_1
  - setting: Enabled
  - policy_class: User
