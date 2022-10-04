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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\SecurityPage_AutoDetect.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting enables intranet mapping rules to be applied automatically if the computer belongs to a domain.
# 
# If you enable this policy setting, automatic detection of the intranet is turned on, and intranet mapping rules are applied automatically if the computer belongs to a domain.
# 
# If you disable this policy setting, automatic detection of the intranet is turned off, and intranet mapping rules are applied however they are configured.
# 
# If this policy setting is not configured, the user can choose whether or not to automatically detect the intranet through the intranet settings dialog in Control Panel.
Turn on automatic detection of intranet:
  lgpo.set:
  - name: SecurityPage_AutoDetect
  - setting: Enabled
  - policy_class: User
