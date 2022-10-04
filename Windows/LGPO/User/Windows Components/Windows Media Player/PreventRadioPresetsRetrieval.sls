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
# LOCATION: \User\Windows Components\Windows Media Player\PreventRadioPresetsRetrieval.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to prevent radio station presets from being retrieved from the Internet.
# 
# If you enable this policy setting, the Player is prevented from automatically retrieving radio station presets from the Internet and displaying them in Media Library. In addition, presets that exist before the policy is configured are not be updated, and presets a user adds are not be displayed.
# 
# If you disable or do not configure this policy setting, the Player automatically retrieves radio station presets from the Internet.
Prevent Radio Station Preset Retrieval:
  lgpo.set:
  - name: PreventRadioPresetsRetrieval
  - setting: Enabled
  - policy_class: User
