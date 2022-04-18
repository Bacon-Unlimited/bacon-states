# SUPPORTED_IE8
#
# This policy setting allows you to manage whether the user has access to Tab Grouping in Internet Explorer.
# 
# If you enable this policy setting, Tab Grouping is turned off.
# 
# If you disable this policy setting, Tab Grouping is turned on.
# 
# If you do not configure this policy setting, the user can turn on or turn off Tab Grouping.
Turn off Tab Grouping:
  lgpo.set:
  - name: DisableTabGrouping
  - setting: Enabled
  - policy_class: User
