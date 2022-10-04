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
# LOCATION: \Computer\Windows Components\Internet Explorer\AllowServicePoweredQSA.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting allows Internet Explorer to provide enhanced suggestions as the user types in the Address bar. To provide enhanced suggestions, the user's keystrokes are sent to Microsoft through Microsoft services.
# 
# If you enable this policy setting, users receive enhanced suggestions while typing in the Address bar. In addition, users won't be able to change the Suggestions setting on the Settings charm.
# 
# If you disable this policy setting, users won't receive enhanced suggestions while typing in the Address bar. In addition, users won't be able to change the Suggestions setting on the Settings charm.
# 
# If you don't configure this policy setting, users can change the Suggestions setting on the Settings charm.
Allow Microsoft services to provide enhanced suggestions as the user types in the Address bar:
  lgpo.set:
  - name: AllowServicePoweredQSA
  - setting: Enabled
  - policy_class: Machine
