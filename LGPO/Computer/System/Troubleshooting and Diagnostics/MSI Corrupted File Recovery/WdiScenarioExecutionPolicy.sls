# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to configure the recovery behavior for corrupted MSI files to one of three states:
# 
# Prompt for Resolution: Detection, troubleshooting, and recovery of corrupted MSI applications will be turned on. Windows will prompt the user with a dialog box when application reinstallation is required. This is the default recovery behavior on Windows client.
# 
# Silent: Detection, troubleshooting, and notification of MSI application to reinstall will occur with no UI. Windows will log an event when corruption is determined and will suggest the application that should be re-installed. This behavior is recommended for headless operation and is the default recovery behavior on Windows server.
# 
# Troubleshooting Only: Detection and verification of file corruption will be performed without UI.  Recovery is not attempted.
# 
# If you enable this policy setting, the recovery behavior for corrupted files is set to either the Prompt For Resolution (default on Windows client), Silent (default on Windows server), or Troubleshooting Only.  
# 
# If you disable this policy setting, the troubleshooting and recovery behavior for corrupted files will be disabled. No troubleshooting or resolution will be attempted.
# 
# If you do not configure this policy setting, the recovery behavior for corrupted files will be set to the default recovery behavior.
# 
# No system or service restarts are required for changes to this policy setting to take immediate effect after a Group Policy refresh.
# 
# Note:  This policy setting will take effect only when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, system file recovery will not be attempted. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
Configure MSI Corrupted File Recovery behavior:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting:
      WdiScenarioExecutionPolicyLevel: enum-placeholder
  - policy_class: Machine
