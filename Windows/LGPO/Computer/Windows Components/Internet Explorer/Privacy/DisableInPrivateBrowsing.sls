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
# LOCATION: \Computer\Windows Components\Internet Explorer\Privacy\DisableInPrivateBrowsing.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to turn off the InPrivate Browsing feature.
# 
# InPrivate Browsing prevents Internet Explorer from storing data about a user's browsing session. This includes cookies, temporary Internet files, history, and other data.
# 
# If you enable this policy setting, InPrivate Browsing is turned off.
# 
# If you disable this policy setting, InPrivate Browsing is available for use.
# 
# If you do not configure this policy setting, InPrivate Browsing can be turned on or off through the registry.
Turn off InPrivate Browsing:
  lgpo.set:
  - name: DisableInPrivateBrowsing
  - setting: Enabled
  - policy_class: Machine
