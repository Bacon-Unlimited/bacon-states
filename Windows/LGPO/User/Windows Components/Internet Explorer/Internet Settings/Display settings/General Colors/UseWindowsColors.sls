# SUPPORTED_IE7
#
# This policy setting prevents the user from using Windows colors as a part of the display settings.
# 
# If you enable this policy setting, Windows colors are turned off. The user cannot turn them on.
# 
# If you disable this policy setting, Windows colors are turned on. The user cannot turn them off.
# 
# If you do not configure this policy setting, the user can turn on or turn off Windows colors for display.
Prevent the use of Windows colors:
  lgpo.set:
  - name: UseWindowsColors
  - setting: Enabled
  - policy_class: User
