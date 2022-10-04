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
# LOCATION: \Computer\Windows Components\Internet Explorer\NoFirstRunCustomise.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents Internet Explorer from running the First Run wizard the first time a user starts the browser after installing Internet Explorer or Windows.
# 
# If you enable this policy setting, you must make one of the following choices:
#      Skip the First Run wizard, and go directly to the user's home page.
#      Skip the First Run wizard, and go directly to the "Welcome to Internet Explorer" webpage.
# 
# Starting with Windows 8, the "Welcome to Internet Explorer" webpage is not available. The user's home page will display regardless of which option is chosen.
# 
# If you disable or do not configure this policy setting, Internet Explorer may run the First Run wizard the first time the browser is started after installation.
Prevent running First Run wizard:
  lgpo.set:
  - name: NoFirstRunCustomise
  - setting:
      FirstRunOptions: enum-placeholder
  - policy_class: Machine
