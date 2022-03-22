# SUPPORTED_IE7
#
# This policy setting allows you to turn on or turn off the earlier menus (for example, File, Edit, and View) in Internet Explorer.
# 
# If you enable this policy setting, the menu bar appears in Internet Explorer by default, and the user cannot turn it off.
# 
# If you disable this policy setting, the menu bar appears in Internet Explorer by default, and the user cannot turn it on.
# 
# If you do not configure this policy setting, the menu bar is turned off by default. The user can turn on or turn off the menu bar.
Turn on menu bar by default:
  lgpo.set:
  - name: AlwaysShowMenu
  - setting: Enabled
  - policy_class: Machine
