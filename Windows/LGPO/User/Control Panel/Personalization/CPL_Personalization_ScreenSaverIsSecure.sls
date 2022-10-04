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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_ScreenSaverIsSecure.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kSP1
#
# Determines whether screen savers used on the computer are password protected.
# 
# If you enable this setting, all screen savers are password protected. If you disable this setting, password protection cannot be set on any screen saver.
# 
# This setting also disables the "Password protected" checkbox on the Screen Saver dialog in the Personalization or Display Control Panel, preventing users from changing the password protection setting.
# 
# If you do not configure this setting, users can choose whether or not to set password protection on each screen saver.
# 
# To ensure that a computer will be password protected, enable the "Enable Screen Saver" setting and specify a timeout via the "Screen Saver timeout" setting.
# 
# Note: To remove the Screen Saver dialog, use the "Prevent changing Screen Saver" setting.
Password protect the screen saver:
  lgpo.set:
  - name: CPL_Personalization_ScreenSaverIsSecure
  - setting: Enabled
  - policy_class: User
