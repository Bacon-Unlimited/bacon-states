####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\MSI Corrupted File Recovery\WdiScenarioExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
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
