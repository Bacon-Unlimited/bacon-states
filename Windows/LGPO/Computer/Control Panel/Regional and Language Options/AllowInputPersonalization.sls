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
# LOCATION: \Computer\Control Panel\Regional and Language Options\AllowInputPersonalization.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy specifies whether users on the device have the option to enable online speech recognition services.
#         
#         If this policy is enabled or not configured, control is deferred to users, and users may choose whether to enable speech services via settings.
#         
#         If this policy is disabled, speech services will be disabled, and users cannot enable speech services via settings.
#       
Allow users to enable online speech recognition services:
  lgpo.set:
  - name: AllowInputPersonalization
  - setting: Enabled
  - policy_class: Machine
