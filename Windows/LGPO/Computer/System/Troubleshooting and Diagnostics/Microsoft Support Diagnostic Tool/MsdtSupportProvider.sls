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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Microsoft Support Diagnostic Tool\MsdtSupportProvider.sls
#
# SUPPORTED WINDOWS OS
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
