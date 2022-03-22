# windows:SUPPORTED_Windows8
#
# This policy setting determines whether remote paths can be used for file shortcut (.lnk file) icons.
# 
# If you enable this policy setting, file shortcut icons are allowed to be obtained from remote paths.
# 
# If you disable or do not configure this policy setting, file shortcut icons that use remote paths are prevented from being displayed.
# 
# Note: Allowing the use of remote paths in file shortcut icons can expose users’ computers to security risks.
Allow the use of remote paths in file shortcut icons:
  lgpo.set:
  - name: EnableShellShortcutIconRemotePath
  - setting: Enabled
  - policy_class: Machine
