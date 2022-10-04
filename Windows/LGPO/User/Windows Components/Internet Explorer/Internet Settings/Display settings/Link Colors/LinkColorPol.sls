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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Display settings\Link Colors\LinkColorPol.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the color of webpage links that he or she has not yet clicked. Appropriate color choices can make links easier to see for some users, especially those who use high-contrast color schemes.
# 
# If you enable this policy setting, the user cannot specify the color of links not yet clicked in Internet Explorer. You must specify the link color (for example: 192,192,192).
# 
# If you disable or do not configure this policy setting, the user can specify the color of links not yet clicked.
Prevent specifying the color of links that have not yet been clicked:
  lgpo.set:
  - name: LinkColorPol
  - setting:
      LinkColor: text-placeholder
  - policy_class: User
