# SUPPORTED_IE5
#
# This policy setting specifies if a user can change proxy settings.
# 
# If you enable this policy setting, the user will not be able to configure proxy settings.
# 
# If you disable or do not configure this policy setting, the user can configure proxy settings.
Prevent changing proxy settings:
  lgpo.set:
  - name: RestrictProxy
  - setting: Enabled
  - policy_class: Machine
