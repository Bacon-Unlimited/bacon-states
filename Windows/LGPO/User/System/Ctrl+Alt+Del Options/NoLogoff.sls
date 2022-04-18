# windows:SUPPORTED_Win2k
#
# This policy setting disables or removes all menu items and buttons that log the user off the system.
# 
# If you enable this policy setting, users will not see the Log off menu item when they press Ctrl+Alt+Del. This will prevent them from logging off unless they restart or shutdown the computer, or clicking Log off from the Start menu.
# 
# Also, see the 'Remove Logoff on the Start Menu' policy setting.
# 
# If you disable or do not configure this policy setting, users can see and select the Log off menu item when they press Ctrl+Alt+Del.
Remove Logoff:
  lgpo.set:
  - name: NoLogoff
  - setting: Enabled
  - policy_class: User
