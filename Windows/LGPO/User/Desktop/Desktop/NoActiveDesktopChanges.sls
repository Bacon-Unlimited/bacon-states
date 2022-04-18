# windows:SUPPORTED_WindowsPreVista
#
# Prevents the user from enabling or disabling Active Desktop or changing the Active Desktop configuration.
# 
# This is a comprehensive setting that locks down the configuration you establish by using other policies in this folder. This setting removes the Web tab from Display in Control Panel. As a result, users cannot enable or disable Active Desktop. If Active Desktop is already enabled, users cannot add, remove, or edit Web content or disable, lock, or synchronize Active Desktop components.
Prohibit changes:
  lgpo.set:
  - name: NoActiveDesktopChanges
  - setting: Enabled
  - policy_class: User
