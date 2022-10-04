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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_DisableThemeChange.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting disables the theme gallery in the Personalization Control Panel.
# 
# If you enable this setting, users cannot change or save a theme.  Elements of a theme such as the desktop background, color, sounds, and screen saver can still be changed (unless policies are set to turn them off).
# 
# If you disable or do not configure this setting, there is no effect.
# 
# Note: If you enable this setting but do not specify a theme using the "load a specific theme" setting, the theme defaults to whatever the user previously set or the system default.
Prevent changing theme:
  lgpo.set:
  - name: CPL_Personalization_DisableThemeChange
  - setting: Enabled
  - policy_class: User
