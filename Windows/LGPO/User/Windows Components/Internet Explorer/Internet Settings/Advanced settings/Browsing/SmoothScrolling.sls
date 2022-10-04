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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\SmoothScrolling.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether smooth scrolling is used to display content at a predefined speed.
# 
# If you enable this policy setting, smooth scrolling is turned off. The user cannot turn on smooth scrolling.
# 
# If you disable this policy setting, smooth scrolling is turned on. The user cannot turn off smooth scrolling.
# 
# If you do not configure this policy setting, the user can hide or show the button to open Microsoft Edge from Internet Explorer.
Turn off smooth scrolling:
  lgpo.set:
  - name: SmoothScrolling
  - setting: Enabled
  - policy_class: User
