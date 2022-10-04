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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\ControlPanel_SendIDNNames.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to manage whether Internet Explorer converts Unicode domain names to internationalized domain name (IDN) format (Punycode) before sending them to Domain Name System (DNS) servers or to proxy servers.
# 
# If you enable this policy setting, you must specify when IDN server names should be sent:
#     0) Unicode domain names are never converted to IDN format.
#     1) Unicode domain names are converted to IDN format only for addresses that are not in the Intranet zone.
#     2) Unicode domain names are converted to IDN format only for addresses that are in the Intranet zone.
#     3) Unicode domain names are always converted to IDN format.
# 
# If you disable or do not configure this policy setting, the user can control this setting by using Advanced Options in Internet Control Panel. By default, domain names are converted to IDN format only for addresses that are not in the Intranet zone.
Send internationalized domain names:
  lgpo.set:
  - name: ControlPanel_SendIDNNames
  - setting:
      SelectIDNBehavior: enum-placeholder
  - policy_class: User
