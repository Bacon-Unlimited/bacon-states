# SUPPORTED_IE8
#
# This policy setting allows you to lock or unlock the toolbars on the user interface.
# 
# If you enable this policy setting, the toolbars are locked and the user cannot move them.
# 
# If you disable this policy setting, the toolbars are unlocked and the user can move them.
# 
# If you do not configure this policy setting, the toolbars are locked by default, but the user can unlock them through the shortcut menu of the Command bar.
Lock all toolbars:
  lgpo.set:
  - name: LockToolbars
  - setting: Enabled
  - policy_class: User
