# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to configure the recovery behavior for corrupted files to one of three states:
# 
# Regular: Detection, troubleshooting, and recovery of corrupted files will automatically start with a minimal UI display. Windows will attempt to present you with a dialog box when a system restart is required. This is the default recovery behavior for corrupted files.
# 
# Silent: Detection, troubleshooting, and recovery of corrupted files will automatically start with no UI. Windows will log an administrator event when a system restart is required. This behavior is recommended for headless operation.
# 
# Troubleshooting Only: Detection and troubleshooting of corrupted files will automatically start with no UI. Recovery is not attempted automatically. Windows will log an administrator event with instructions if manual recovery is possible.
# 
# If you enable this setting, the recovery behavior for corrupted files will be set to either the regular (default), silent, or troubleshooting only state.
# 
# If you disable this setting, the recovery behavior for corrupted files will be disabled. No troubleshooting or resolution will be attempted.
# 
# If you do not configure this setting, the recovery behavior for corrupted files will be set to the regular recovery behavior.
# 
# No system or service restarts are required for changes to this policy to take immediate effect after a Group Policy refresh.
# 
# Note:  This policy setting will take effect only when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, system file recovery will not be attempted. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
Configure Corrupted File Recovery behavior:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting:
      WdiScenarioExecutionPolicyLevel: enum-placeholder
  - policy_class: Machine
