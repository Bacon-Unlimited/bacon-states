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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\WdiDpsScenarioDataSizeLimitPolicy.sls
#
# SUPPORTED WINDOWS OS
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
