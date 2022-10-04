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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Scripted Diagnostics\ScriptedDiagnosticsSecurityPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting determines whether scripted diagnostics will execute diagnostic packages that are signed by untrusted publishers.
# 
# If you enable this policy setting, the scripted diagnostics execution engine validates the signer of any diagnostic package and runs only those signed by trusted publishers.
# 
# If you disable or do not configure this policy setting, the scripted diagnostics execution engine runs all digitally signed packages.
Configure Security Policy for Scripted Diagnostics:
  lgpo.set:
  - name: ScriptedDiagnosticsSecurityPolicy
  - setting: Enabled
  - policy_class: Machine
