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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Scripted Diagnostics\ScriptedDiagnosticsExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows users to access and run the troubleshooting tools that are available in the Troubleshooting Control Panel and to run the troubleshooting wizard to troubleshoot problems on their computers.
# 
# If you enable or do not configure this policy setting, users can access and run the troubleshooting tools from the Troubleshooting Control Panel.
# 
# If you disable this policy setting, users cannot access or run the troubleshooting tools from the Control Panel.
# 
# Note that this setting also controls a user's ability to launch standalone troubleshooting packs such as those found in .diagcab files.
#     
'Troubleshooting: Allow users to access and run Troubleshooting Wizards':
  lgpo.set:
  - name: ScriptedDiagnosticsExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
