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
# LOCATION: \User\Windows Components\RSS Feeds\Allow_Basic_Feed_Auth_In_Clear.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows users to have their feeds authenticated through the Basic authentication scheme over an unencrypted HTTP connection.
# 
# If you enable this policy setting, the Windows RSS Platform authenticates feeds to servers by using the Basic authentication scheme in combination with a less secure HTTP connection.
# 
# If you disable or do not configure this policy setting, the Windows RSS Platform does not authenticate feeds to servers by using the Basic authentication scheme in combination with a less secure HTTP connection.
# 
# A developer cannot change this policy setting through the Feed APIs.
Turn on Basic feed authentication over HTTP:
  lgpo.set:
  - name: Allow_Basic_Feed_Auth_In_Clear
  - setting: Enabled
  - policy_class: User
