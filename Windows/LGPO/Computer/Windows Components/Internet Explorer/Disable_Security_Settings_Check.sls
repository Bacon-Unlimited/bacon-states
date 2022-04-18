# SUPPORTED_IE7
#
# This policy setting turns off the Security Settings Check feature, which checks Internet Explorer security settings to determine when the settings put Internet Explorer at risk.
# 
# If you enable this policy setting, the feature is turned off.
# 
# If you disable or do not configure this policy setting, the feature is turned on.
Turn off the Security Settings Check feature:
  lgpo.set:
  - name: Disable_Security_Settings_Check
  - setting: Enabled
  - policy_class: Machine
