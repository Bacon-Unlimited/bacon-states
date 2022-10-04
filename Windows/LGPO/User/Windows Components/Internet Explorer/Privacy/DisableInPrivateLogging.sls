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
# LOCATION: \User\Windows Components\Internet Explorer\Privacy\DisableInPrivateLogging.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8ONLY
#
# This policy setting allows you to turn off the collection of data used by the InPrivate Filtering Automatic mode.
# 
# The data consists of the URLs of third-party content, along with data about the first-party websites that referenced it. It is collected during non-InPrivate (normal) browsing sessions.
# 
# If you enable this policy setting, InPrivate Filtering data collection is turned off.
# 
# If you disable this policy setting, InPrivate Filtering collection is turned on.
# 
# If you do not configure this policy setting, InPrivate Filtering data collection can be turned on or off on the Privacy tab in Internet Options.
Turn off collection of InPrivate Filtering data:
  lgpo.set:
  - name: DisableInPrivateLogging
  - setting: Enabled
  - policy_class: User
