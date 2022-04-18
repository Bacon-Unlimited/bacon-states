# SUPPORTED_IE8
#
# This policy setting allows you to manage whether a user has access to the Favorites bar in Internet Explorer.
# 
# If you enable this policy setting, the Favorites bar is turned off.
# 
# If you disable this policy setting, the Favorites bar is turned on.
# 
# If you do not configure this policy setting, the user can turn on or turn off the Favorites bar.
Turn off Favorites bar:
  lgpo.set:
  - name: DisableFavoritesBar
  - setting: Enabled
  - policy_class: Machine
