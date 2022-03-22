# windows:SUPPORTED_WindowsXP
#
# Removes the Security tab from File Explorer.
# 
# If you enable this setting, users opening the Properties dialog box for all file system objects, including folders, files, shortcuts, and drives, will not be able to access the Security tab. As a result, users will be able to neither change the security settings nor view a list of all users that have access to the resource in question.
# 
# If you disable or do not configure this setting, users will be able to access the security tab.
Remove Security tab:
  lgpo.set:
  - name: NoSecurityTab
  - setting: Enabled
  - policy_class: User
