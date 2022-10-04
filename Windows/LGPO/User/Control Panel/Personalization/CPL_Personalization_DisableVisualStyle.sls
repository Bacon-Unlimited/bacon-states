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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_DisableVisualStyle.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Prevents users or applications from changing the visual style of the windows and buttons displayed on their screens.
# 
# When enabled on Windows XP, this setting disables the "Windows and buttons" drop-down list on the Appearance tab in Display Properties.
# 
# When enabled on Windows XP and later systems, this setting prevents users and applications from changing the visual style through the command line.  Also, a user may not apply a different visual style when changing themes.
Prevent changing visual style for windows and buttons:
  lgpo.set:
  - name: CPL_Personalization_DisableVisualStyle
  - setting: Enabled
  - policy_class: User
