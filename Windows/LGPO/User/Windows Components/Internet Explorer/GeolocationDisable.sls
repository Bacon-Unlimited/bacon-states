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
# LOCATION: \User\Windows Components\Internet Explorer\GeolocationDisable.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting allows you to disable browser geolocation support. This will prevent websites from requesting location data about the user.
# 
# If you enable this policy setting, browser geolocation support is turned off.
# 
# If you disable this policy setting, browser geolocation support is turned on.
# 
# If you do not configure this policy setting, browser geolocation support can be turned on or off in Internet Options on the Privacy tab.
Turn off browser geolocation:
  lgpo.set:
  - name: GeolocationDisable
  - setting: Enabled
  - policy_class: User
