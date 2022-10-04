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
# LOCATION: \Computer\Windows Components\App runtime\AppxRuntimeBlockHostedAppAccessWinRT.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting controls whether Universal Windows apps with Windows Runtime API access directly from web content can be launched.
# 
#         If you enable this policy setting, Universal Windows apps which declare Windows Runtime API access in ApplicationContentUriRules section of the manifest cannot be launched; Universal Windows apps which have not declared Windows Runtime API access in the manifest are not affected.
# 
#         If you disable or do not configure this policy setting, all Universal Windows apps can be launched.
# 
#         This policy should not be enabled unless recommended by Microsoft as a security response because it can cause severe app compatibility issues.
#       
Block launching Universal Windows apps with Windows Runtime API access from hosted content.:
  lgpo.set:
  - name: AppxRuntimeBlockHostedAppAccessWinRT
  - setting: Enabled
  - policy_class: Machine
