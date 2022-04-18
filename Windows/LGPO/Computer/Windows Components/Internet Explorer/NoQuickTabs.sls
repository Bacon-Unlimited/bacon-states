# SUPPORTED_IE7_10
#
# This policy setting allows you to turn off the Quick Tabs functionality in Internet Explorer.
# 
# If you enable this policy setting, the entry points to Quick Tabs are removed from the Internet Explorer user interface.
# 
# If you disable or do not configure this policy setting, Quick Tabs is turned on.
Turn off Quick Tabs functionality:
  lgpo.set:
  - name: NoQuickTabs
  - setting: Enabled
  - policy_class: Machine
