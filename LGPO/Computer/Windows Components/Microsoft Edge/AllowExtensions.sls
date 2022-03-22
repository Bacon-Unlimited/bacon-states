# SUPPORTED_INTERNET_BROWSER_WIN10V1607
#
# This setting lets you decide whether employees can load extensions in Microsoft Edge.
# 
# If you enable or don't configure this setting, employees can use Microsoft Edge Extensions.
# 
# If you disable this setting, employees can't use Microsoft Edge Extensions.
Allow Extensions:
  lgpo.set:
  - name: AllowExtensions
  - setting: Enabled
  - policy_class: Machine
