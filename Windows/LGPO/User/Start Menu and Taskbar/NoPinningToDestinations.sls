# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control pinning items in Jump Lists.
# 
# If you enable this policy setting, users cannot pin files, folders, websites, or other items to their Jump Lists in the Start Menu and Taskbar. Users also cannot unpin existing items pinned to their Jump Lists. Existing items already pinned to their Jump Lists will continue to show.
# 
# If you disable or do not configure this policy setting, users can pin files, folders, websites, and other items to a program's Jump List so that the items is always present in this menu.
# 
Do not allow pinning items in Jump Lists:
  lgpo.set:
  - name: NoPinningToDestinations
  - setting: Enabled
  - policy_class: User
