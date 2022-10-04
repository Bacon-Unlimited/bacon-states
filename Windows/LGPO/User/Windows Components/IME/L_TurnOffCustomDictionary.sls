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
# LOCATION: \User\Windows Components\IME\L_TurnOffCustomDictionary.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off the ability to use a custom dictionary.
# 
# If you enable this policy setting, you cannot add, edit, and delete words in the custom dictionary either with GUI tools or APIs. A word registered in the custom dictionary before enabling this policy setting can continue to be used for conversion.
# 
# If you disable or do not configure this policy setting, the custom dictionary can be used by default.
# 
# For Japanese Microsoft IME, [Clear auto-tuning information] works, even if this policy setting is enabled, and it clears self-tuned words from the custom dictionary.
# 
# This policy setting is applied to Japanese Microsoft IME.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off custom dictionary:
  lgpo.set:
  - name: L_TurnOffCustomDictionary
  - setting: Enabled
  - policy_class: User
