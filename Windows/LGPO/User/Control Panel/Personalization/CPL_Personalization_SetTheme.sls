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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_SetTheme.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Specifies which theme file is applied to the computer the first time a user logs on.
# 
# If you enable this setting, the theme that you specify will be applied when a new user logs on for the first time.  This policy does not prevent the user from changing the theme or any of the theme elements such as the desktop background, color, sounds, or screen saver after the first logon.
# 
# If you disable or do not configure this setting, the default theme will be applied at the first logon.
Load a specific theme:
  lgpo.set:
  - name: CPL_Personalization_SetTheme
  - setting:
      ThemeFilename: text-placeholder
  - policy_class: User
