# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to turn off desktop gadgets that have been installed by the user.
# 
# If you enable this setting, Windows will not run any user-installed gadgets.
# 
# If you disable or do not configure this setting, Windows will run user-installed gadgets.
# 
# The default is for Windows to run user installed gadgets.
Turn Off user-installed desktop gadgets:
  lgpo.set:
  - name: TurnOffUserInstalledGagdets_1
  - setting: Enabled
  - policy_class: User
