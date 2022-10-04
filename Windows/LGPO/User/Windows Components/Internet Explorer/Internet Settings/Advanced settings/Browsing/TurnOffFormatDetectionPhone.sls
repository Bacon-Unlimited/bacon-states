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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\TurnOffFormatDetectionPhone.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting determines whether phone numbers are recognized and turned into hyperlinks, which can be used to invoke the default phone application on the system.
# 
# If you enable this policy setting, phone number detection is turned off. Users won't be able to modify this setting.
# 
# If you disable this policy setting, phone number detection is turned on. Users won't be able to modify this setting.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer settings. The default is on.
Turn off phone number detection:
  lgpo.set:
  - name: TurnOffFormatDetectionPhone
  - setting: Enabled
  - policy_class: User
