# SUPPORTED_IE8
#
# This policy setting allows you to manage whether the user can access Developer Tools in Internet Explorer.
# 
# If you enable this policy setting, the user cannot access Developer Tools.
# 
# If you disable or do not configure this policy setting, the user can access Developer Tools.
Turn off Developer Tools:
  lgpo.set:
  - name: DisableDeveloperTools
  - setting: Enabled
  - policy_class: Machine
