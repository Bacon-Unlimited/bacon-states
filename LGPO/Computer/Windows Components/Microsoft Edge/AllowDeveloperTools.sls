# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you decide whether F12 Developer Tools are available on Microsoft Edge.
# 
# If you enable or don't configure this setting, the F12 Developer Tools are available in Microsoft Edge.
# 
# If you disable this setting, the F12 Developer Tools aren't available in Microsoft Edge.
Allow Developer Tools:
  lgpo.set:
  - name: AllowDeveloperTools
  - setting: Enabled
  - policy_class: Machine
