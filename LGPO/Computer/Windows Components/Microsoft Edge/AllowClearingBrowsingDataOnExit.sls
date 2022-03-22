# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting allows the automatic clearing of browsing data when Microsoft Edge closes.
# 
# If you enable this policy setting, clearing browsing history on exit is turned on.
# 
# If you disable or don't configure this policy setting, it can be turned on and configured by the employee in the Clear browsing data options under Settings.
#       
Allow clearing browsing data on exit:
  lgpo.set:
  - name: AllowClearingBrowsingDataOnExit
  - setting: Enabled
  - policy_class: Machine
