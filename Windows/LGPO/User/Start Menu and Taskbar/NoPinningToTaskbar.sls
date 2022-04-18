# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control pinning programs to the Taskbar.
# 
# If you enable this policy setting, users cannot change the programs currently pinned to the Taskbar. If any programs are already pinned to the Taskbar, these programs continue to show in the Taskbar. However, users cannot unpin these programs already pinned to the Taskbar, and they cannot pin new programs to the Taskbar.
# 
# If you disable or do not configure this policy setting, users can change the programs currently pinned to the Taskbar.
Do not allow pinning programs to the Taskbar:
  lgpo.set:
  - name: NoPinningToTaskbar
  - setting: Enabled
  - policy_class: User
