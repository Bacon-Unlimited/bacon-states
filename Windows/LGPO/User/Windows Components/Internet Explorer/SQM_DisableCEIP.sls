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
# LOCATION: \User\Windows Components\Internet Explorer\SQM_DisableCEIP.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7_NONVISTA
#
# This policy setting prevents the user from participating in the Customer Experience Improvement Program (CEIP).
# 
# If you enable this policy setting, the user cannot participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.
# 
# If you disable this policy setting, the user must participate in the CEIP, and the Customer Feedback Options command does not appear on the Help menu.
# 
# If you do not configure this policy setting, the user can choose to participate in the CEIP.
Prevent participation in the Customer Experience Improvement Program:
  lgpo.set:
  - name: SQM_DisableCEIP
  - setting: Enabled
  - policy_class: User
