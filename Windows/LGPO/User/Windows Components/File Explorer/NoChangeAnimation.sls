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
# LOCATION: \User\Windows Components\File Explorer\NoChangeAnimation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to prevent users from enabling or disabling minor animations in the operating system for the movement of windows, menus, and lists.
# 
# If you enable this policy setting, the "Use transition effects for menus and tooltips" option in Display in Control Panel is disabled, and cannot be toggled by users.
# 
# Effects, such as animation, are designed to enhance the user's experience but might be confusing or distracting to some users.
# 
# If you disable or do not configure this policy setting, users are allowed to turn on or off these minor system animations using the "Use transition effects for menus and tooltips" option in Display in Control Panel.
Remove UI to change menu animation setting:
  lgpo.set:
  - name: NoChangeAnimation
  - setting: Enabled
  - policy_class: User
