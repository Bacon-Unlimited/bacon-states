# windows:SUPPORTED_Windows_6_3
#
# 
# This policy setting allows you to control pinning the Store app to the Taskbar.
# 
# If you enable this policy setting, users cannot pin the Store app to the Taskbar. If the Store app is already pinned to the Taskbar, it will be removed from the Taskbar on next login.
# 
# If you disable or do not configure this policy setting, users can pin the Store app to the Taskbar.
Do not allow pinning Store app to the Taskbar:
  lgpo.set:
  - name: NoPinningStoreToTaskbar
  - setting: Enabled
  - policy_class: User
