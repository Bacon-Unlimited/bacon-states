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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics\DisablePcaUIPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting configures the Program Compatibility Assistant (PCA) to diagnose failures with application and driver compatibility. 
# 
# If you enable this policy setting, the PCA is configured to detect failures during application installation, failures during application runtime, and drivers blocked due to compatibility issues. When failures are detected, the PCA will provide options to run the application in a compatibility mode or get help online through a Microsoft website.
# 
# If you disable this policy setting, the PCA does not detect compatibility issues for applications and drivers.
# 
# If you do not configure this policy setting, the PCA is configured to detect failures during application installation, failures during application runtime, and drivers blocked due to compatibility issues.
# 
# Note: This policy setting has no effect if the "Turn off Program Compatibility Assistant" policy setting is enabled. The Diagnostic Policy Service (DPS) and Program Compatibility Assistant Service must be running for the PCA to run. These services can be configured by using the Services snap-in to the Microsoft Management Console.
Detect compatibility issues for applications and drivers:
  lgpo.set:
  - name: DisablePcaUIPolicy
  - setting: Enabled
  - policy_class: Machine
