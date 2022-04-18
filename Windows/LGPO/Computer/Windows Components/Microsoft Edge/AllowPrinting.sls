# SUPPORTED_INTERNET_BROWSER_RS5
#
# With this policy, you can restrict whether printing web content in Microsoft Edge is allowed.
# 
# If enabled, printing is allowed.
# 
# If disabled, printing is not allowed.
Allow printing:
  lgpo.set:
  - name: AllowPrinting
  - setting: Enabled
  - policy_class: Machine
