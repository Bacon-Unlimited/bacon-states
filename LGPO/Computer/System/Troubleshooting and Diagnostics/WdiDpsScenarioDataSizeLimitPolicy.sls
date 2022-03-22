# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the data retention limit for Diagnostic Policy Service (DPS) scenario data.
# 
# If you enable this policy setting, you must enter the maximum size of scenario data that should be retained in megabytes. Detailed troubleshooting data related to scenarios will be retained until this limit is reached.
# 
# If you disable or do not configure this policy setting, the DPS deletes scenario data once it exceeds 128 megabytes in size.
# 
# No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.
# 
# This policy setting will only take effect when the Diagnostic Policy Service is in the running state.  When the service is stopped or disabled, diagnostic scenario data will not be deleted.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.
'Diagnostics: Configure scenario retention':
  lgpo.set:
  - name: WdiDpsScenarioDataSizeLimitPolicy
  - setting:
      WdiDpsScenarioDataSizeLimitPolicyValue: decimal-placeholder
  - policy_class: Machine
