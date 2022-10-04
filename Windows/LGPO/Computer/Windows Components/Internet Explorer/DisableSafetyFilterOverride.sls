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
# LOCATION: \Computer\Windows Components\Internet Explorer\DisableSafetyFilterOverride.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter prevents the user from browsing to or downloading from sites that are known to host malicious content. SmartScreen Filter also prevents the execution of files that are known to be malicious.
# 
# If you enable this policy setting, SmartScreen Filter warnings block the user.
# 
# If you disable or do not configure this policy setting, the user can bypass SmartScreen Filter warnings.
Prevent bypassing SmartScreen Filter warnings:
  lgpo.set:
  - name: DisableSafetyFilterOverride
  - setting: Enabled
  - policy_class: Machine
