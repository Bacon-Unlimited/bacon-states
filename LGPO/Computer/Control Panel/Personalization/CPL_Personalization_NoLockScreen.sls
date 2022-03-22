# windows:SUPPORTED_Windows8
#
# This policy setting controls whether the lock screen appears for users.
# 
# If you enable this policy setting, users that are not required to press CTRL + ALT + DEL before signing in will see their selected tile after locking their PC.
# 
# If you disable or do not configure this policy setting, users that are not required to press CTRL + ALT + DEL before signing in will see a lock screen after locking their PC. They must dismiss the lock screen using touch, the keyboard, or by dragging it with the mouse.
Do not display the lock screen:
  lgpo.set:
  - name: CPL_Personalization_NoLockScreen
  - setting: Enabled
  - policy_class: Machine
