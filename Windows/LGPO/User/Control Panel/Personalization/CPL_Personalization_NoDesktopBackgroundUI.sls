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
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_NoDesktopBackgroundUI.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents users from adding or changing the background design of the desktop.
# 
# By default, users can use the Desktop Background page in the Personalization or Display Control Panel to add a background design (wallpaper) to their desktop.
# 
# If you enable this setting, none of the Desktop Background settings can be changed by the user.
# 
# To specify wallpaper for a group, use the "Desktop Wallpaper" setting.
# 
# Note: You must also enable the "Desktop Wallpaper" setting to prevent users from changing the desktop wallpaper. Refer to KB article: Q327998 for more information.
# 
# Also, see the "Allow only bitmapped wallpaper" setting.
Prevent changing desktop background:
  lgpo.set:
  - name: CPL_Personalization_NoDesktopBackgroundUI
  - setting: Enabled
  - policy_class: User
