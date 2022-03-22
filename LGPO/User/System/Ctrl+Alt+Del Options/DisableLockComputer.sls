# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from locking the system.
# 
# While locked, the desktop is hidden and the system cannot be used. Only the user who locked the system or the system administrator can unlock it.
# 
# If you enable this policy setting, users cannot lock the computer from the keyboard using Ctrl+Alt+Del.
# 
# If you disable or do not configure this policy setting, users will be able to lock the computer from the keyboard using Ctrl+Alt+Del.
# 
# Tip:To lock a computer without configuring a setting, press Ctrl+Alt+Delete, and then click Lock this computer.
Remove Lock Computer:
  lgpo.set:
  - name: DisableLockComputer
  - setting: Enabled
  - policy_class: User
