# windows:SUPPORTED_Windows7
#
# This policy setting configures Microsoft Support Diagnostic Tool (MSDT) interactive communication with the support provider. MSDT gathers diagnostic data for analysis by support professionals.
# 
# If you enable this policy setting, users can use MSDT to collect and send diagnostic data to a support professional to resolve a problem.
# 
# By default, the support provider is set to Microsoft Corporation.
# 
# If you disable this policy setting, MSDT cannot run in support mode, and no data can be collected or sent to the support provider.
# 
# If you do not configure this policy setting, MSDT support mode is enabled by default.
# 
# No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.
# 
# 
'Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider':
  lgpo.set:
  - name: MsdtSupportProvider
  - setting: Enabled
  - policy_class: Machine
