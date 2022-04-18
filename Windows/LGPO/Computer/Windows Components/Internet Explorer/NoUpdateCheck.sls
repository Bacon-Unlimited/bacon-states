# SUPPORTED_IE5_6
#
# Prevents Internet Explorer from checking whether a new version of the browser is available.
# 
# If you enable this policy, it prevents Internet Explorer from checking to see whether it is the latest available browser version and notifying users if a new version is available.
# 
# If you disable this policy or do not configure it, Internet Explorer checks every 30 days by default, and then notifies users if a new version is available.
# 
# This policy is intended to help the administrator maintain version control for Internet Explorer by preventing users from being notified about new versions of the browser.
Disable Periodic Check for Internet Explorer software updates:
  lgpo.set:
  - name: NoUpdateCheck
  - setting: Enabled
  - policy_class: Machine
