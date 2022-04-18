# SUPPORTED_IE7
#
# This policy setting prevents the user from using the "Fix settings" functionality related to Security Settings Check.
# 
# If you enable this policy setting, the user cannot use the "Fix settings" functionality.
# 
# If you disable or do not configure this policy setting, the user can use the "Fix settings" functionality.
# 
# Note: When this policy setting is enabled, the "Fix settings" command on the Notification bar shortcut menu should be disabled.
Prevent "Fix settings" functionality:
  lgpo.set:
  - name: Disable_Fix_Security_Settings
  - setting: Enabled
  - policy_class: Machine
