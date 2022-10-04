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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_NoColorAppearanceUI.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Disables the Color (or Window Color) page in the Personalization Control Panel, or the Color Scheme dialog in the Display Control Panel on systems where the Personalization feature is not available.
# 
# This setting prevents users from using Control Panel to change the window border and taskbar color (on Windows 8), glass color (on Windows Vista and Windows 7), system colors, or color scheme of the desktop and windows.
# 
# If this setting is disabled or not configured, the Color (or Window Color) page or Color Scheme dialog is available in the Personalization or Display Control Panel.
# 
# For systems prior to Windows Vista, this setting hides the Appearance and Themes tabs in the in Display in Control Panel.
Prevent changing color and appearance:
  lgpo.set:
  - name: CPL_Personalization_NoColorAppearanceUI
  - setting: Enabled
  - policy_class: User
