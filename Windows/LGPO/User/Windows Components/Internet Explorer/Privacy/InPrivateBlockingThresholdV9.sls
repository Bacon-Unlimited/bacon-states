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
# LOCATION: \User\Windows Components\Internet Explorer\Privacy\InPrivateBlockingThresholdV9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9
#
# This policy setting allows you to establish the threshold for Tracking Protection Automatic mode.
# 
# The threshold sets the number of first-party sites that a particular third-party item can be referenced from before it is blocked. Setting this value lower can help prevent more third-party sites from obtaining details about a user's browsing. However, doing so may cause compatibility issues on some websites. The allowed value range is 3 through 30.
# 
# If you enable this policy setting, the selected value is enforced.
# 
# If you disable or do not configure this policy setting, the user can establish the Tracking Protection threshold by clicking the Safety button and then clicking Tracking Protection.
Establish Tracking Protection threshold:
  lgpo.set:
  - name: InPrivateBlockingThresholdV9
  - setting:
      InPrivateBlockingThresholdV9Value: decimal-placeholder
  - policy_class: User
