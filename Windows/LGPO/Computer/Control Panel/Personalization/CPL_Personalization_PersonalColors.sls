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
# LOCATION: \Computer\Control Panel\Personalization\CPL_Personalization_PersonalColors.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# Forces Windows to use the specified colors for the background and accent. The color values are specified in hex as #RGB.
# 
# By default, users can change the background and accent colors.
# 
# If this setting is enabled, the background and accent colors of Windows will be set to the specified colors and users cannot change those colors. This setting will not be applied if the specified colors do not meet a contrast ratio of 2:1 with white text.
Force a specific background and accent color:
  lgpo.set:
  - name: CPL_Personalization_PersonalColors
  - setting:
      PersonalColors_Accent: text-placeholder
      PersonalColors_Background: text-placeholder
  - policy_class: Machine
