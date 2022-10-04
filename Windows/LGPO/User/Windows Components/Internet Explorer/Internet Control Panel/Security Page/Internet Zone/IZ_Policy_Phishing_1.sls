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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Internet Zone\IZ_Policy_Phishing_1.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.
# 
# If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.
# 
# If you disable this policy setting, SmartScreen Filter does not scan pages in this zone for malicious content.
# 
# If you do not configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.
# 
# Note: In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
Turn on SmartScreen Filter scan:
  lgpo.set:
  - name: IZ_Policy_Phishing_1
  - setting:
      IZ_Partname2301: enum-placeholder
  - policy_class: User
