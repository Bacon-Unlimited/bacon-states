# windows:SUPPORTED_Windows8
#
# Shows or hides lock from the user tile menu.
# If you enable this policy setting, the lock option will be shown in the User Tile menu.
# 
# If you disable this policy setting, the lock option will never be shown in the User Tile menu.
# 
# If you do not configure this policy setting, users will be able to choose whether they want lock to show through the Power Options Control Panel.
Show lock in the user tile menu:
  lgpo.set:
  - name: ShowLockOption
  - setting: Enabled
  - policy_class: Machine
