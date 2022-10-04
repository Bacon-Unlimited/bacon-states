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
# LOCATION: \Computer\Windows Components\Internet Explorer\Disable_Managing_Safety_Filter_IE9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting prevents the user from managing SmartScreen Filter, which warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing," or is known to host malware.
# 
# If you enable this policy setting, the user is not prompted to turn on SmartScreen Filter. All website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the user.
# 
# If you disable or do not configure this policy setting, the user is prompted to decide whether to turn on SmartScreen Filter during the first-run experience.
Prevent managing SmartScreen Filter:
  lgpo.set:
  - name: Disable_Managing_Safety_Filter_IE9
  - setting:
      IE9SafetyFilterOptions: enum-placeholder
  - policy_class: Machine
