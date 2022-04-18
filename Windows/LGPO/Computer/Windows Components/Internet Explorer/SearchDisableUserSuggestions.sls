# SUPPORTED_IE8
#
# This policy setting allows you to turn off suggestions for all user-installed search providers.
# 
# If you enable this policy setting, the user cannot view suggestions for user-installed search providers.
# 
# If you disable or do not configure this policy setting, the user can choose to view suggestions for all user-installed search providers that offer suggestions.
Turn off suggestions for all user-installed providers:
  lgpo.set:
  - name: SearchDisableUserSuggestions
  - setting: Enabled
  - policy_class: Machine
