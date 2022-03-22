# windows:SUPPORTED_WindowsXP
#
# This policy setting controls whether or not errors are reported to Microsoft.
# 
# Error Reporting is used to report information about a system or application that has failed or has stopped responding and is used to improve the quality of the product.
# 
# If you enable this policy setting, users are not given the option to report errors.
# 
# If you disable or do not configure this policy setting, the errors may be reported to Microsoft via the Internet or to a corporate file share.
# 
# This policy setting overrides any user setting made from the Control Panel for error reporting.
# 
# Also see the "Configure Error Reporting", "Display Error Notification" and "Disable Windows Error Reporting" policy settings under Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting.
Turn off Windows Error Reporting:
  lgpo.set:
  - name: PCH_DoNotReport
  - setting: Enabled
  - policy_class: Machine
