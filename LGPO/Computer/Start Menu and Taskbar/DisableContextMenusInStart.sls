# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy allows you to prevent users from being able to open context menus in the Start Menu.
# 
# If you enable this policy, then invocations of context menus within the Start Menu will be ignored.
Disable context menus in the Start Menu:
  lgpo.set:
  - name: DisableContextMenusInStart
  - setting: Enabled
  - policy_class: Machine
