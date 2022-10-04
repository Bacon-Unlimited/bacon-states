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
# LOCATION: \User\Control Panel\Regional and Language Options\TurnOffOfferTextPredictions.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# 
#         This policy turns off the offer text predictions as I type option. This does not, however, prevent the user or an application from changing the setting programmatically.
# 
#         The offer text predictions as I type option controls whether or not text prediction suggestions will be presented to the user on the on-screen keyboard.
# 
#         If the policy is Enabled, then the option will be locked to not offer text predictions.
# 
#         If the policy is Disabled or Not Configured, then the user will be free to change the setting according to their preference.
# 
#         Note that the availability and function of this setting is dependent on supported languages being enabled.
Turn off offer text predictions as I type:
  lgpo.set:
  - name: TurnOffOfferTextPredictions
  - setting: Enabled
  - policy_class: User
