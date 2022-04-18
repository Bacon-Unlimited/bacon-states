# SUPPORTED_IE10
#
# This policy setting configures Internet Explorer to automatically install new versions of Internet Explorer when they are available.
# 
# If you enable this policy setting, automatic upgrade of Internet Explorer will be turned on.
# 
# If you disable this policy setting, automatic upgrade of Internet Explorer will be turned off.
# 
# If you do not configure this policy, users can turn on or turn off automatic updates from the About Internet Explorer dialog.
# 
# Note: This policy is deprecated starting with Windows 10 version 1703.
Install new versions of Internet Explorer automatically:
  lgpo.set:
  - name: EnableAutoUpgrade
  - setting: Enabled
  - policy_class: Machine
