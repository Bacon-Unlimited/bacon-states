# windows:SUPPORTED_Windows7
#
# This policy setting allows you to remove pinned programs from the taskbar.
# 
# If you enable this policy setting, pinned programs are prevented from being shown on the Taskbar. Users cannot pin programs to the Taskbar.
# 
# If you disable or do not configure this policy setting, users can pin programs so that the program shortcuts stay on the Taskbar.
Remove pinned programs from the Taskbar:
  lgpo.set:
  - name: TaskbarNoPinnedList
  - setting: Enabled
  - policy_class: User
