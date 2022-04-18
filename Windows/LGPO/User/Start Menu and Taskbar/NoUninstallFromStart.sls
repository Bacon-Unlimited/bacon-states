# windows:SUPPORTED_Windows8
#
# If you enable this setting, users cannot uninstall apps from Start.
# 
# If you disable this setting or do not configure it, users can access the uninstall command from Start
Prevent users from uninstalling applications from Start:
  lgpo.set:
  - name: NoUninstallFromStart
  - setting: Enabled
  - policy_class: User
