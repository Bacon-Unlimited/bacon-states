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
# LOCATION: \User\Windows Components\IME\L_TurnOnCloudCandidateCHS.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# This policy setting controls the cloud candidates feature, which uses an online service to provide input suggestions that don't exist in a PC's local dictionary.
# 
# If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the suggestions, and the user won't be able to turn it off.
# 
# If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.
# 
# If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the cloud candidates feature.
# 
# This Policy setting applies only to Microsoft CHS Pinyin IME.
Turn on cloud candidate for CHS:
  lgpo.set:
  - name: L_TurnOnCloudCandidateCHS
  - setting: Enabled
  - policy_class: User
