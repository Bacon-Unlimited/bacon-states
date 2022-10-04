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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_NoSoundSchemeUI.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Prevents users from changing the sound scheme.
# 
# By default, users can use the Sounds tab in the Sound Control Panel to add, remove, or change the system Sound Scheme.
# 
# If you enable this setting, none of the Sound Scheme settings can be changed by the user.
Prevent changing sounds:
  lgpo.set:
  - name: CPL_Personalization_NoSoundSchemeUI
  - setting: Enabled
  - policy_class: User
