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
# LOCATION: \User\Windows Components\Internet Explorer\Privacy\DisableInPrivateBlockingV8.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8ONLY
#
# This policy setting allows you to turn off InPrivate Filtering.
# 
# InPrivate Filtering helps users control whether third parties can automatically collect information about their browsing based on the sites that they visit. InPrivate Filtering does this by identifying third-party content that is used by multiple websites that users have visited.
# 
# If you enable this policy setting, InPrivate Filtering is turned off in all browsing sessions, and InPrivate Filtering data is not collected.
# 
# If you disable this policy setting, InPrivate Filtering is available for use.
# 
# If you do not configure this policy setting, it can be configured through the registry.
Turn off InPrivate Filtering:
  lgpo.set:
  - name: DisableInPrivateBlockingV8
  - setting: Enabled
  - policy_class: User
