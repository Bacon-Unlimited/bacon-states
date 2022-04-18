# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the update check interval. The default value is 30 days.
# 
# If you enable this policy setting, the user cannot specify the update check interval. You must specify the update check interval.
# 
# If you disable or do not configure this policy setting, the user can specify the update check interval.
Prevent specifying the update check interval (in days):
  lgpo.set:
  - name: UpdateIntervalPol
  - setting:
      UpdateInterval: decimal-placeholder
  - policy_class: Machine
