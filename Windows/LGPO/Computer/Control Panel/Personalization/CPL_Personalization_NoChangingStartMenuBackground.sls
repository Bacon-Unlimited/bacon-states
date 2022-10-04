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
# LOCATION: \Computer\Control Panel\Personalization\CPL_Personalization_NoChangingStartMenuBackground.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Prevents users from changing the look of their start menu background, such as its color or accent.
# 
# By default, users can change the look of their start menu background, such as its color or accent.
# 
# If you enable this setting, the user will be assigned the default start menu background and colors and will not be allowed to change them.
# 
# If the "Force a specific background and accent color" policy is also set on a supported version of Windows, then those colors take precedence over this policy.
# 
# If the "Force a specific Start background" policy is also set on a supported version of Windows, then that background takes precedence over this policy.
# 
Prevent changing start menu background:
  lgpo.set:
  - name: CPL_Personalization_NoChangingStartMenuBackground
  - setting: Enabled
  - policy_class: Machine
