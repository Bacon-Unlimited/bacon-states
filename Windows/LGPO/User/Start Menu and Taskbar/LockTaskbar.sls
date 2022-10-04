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
# LOCATION: \User\Start Menu and Taskbar\LockTaskbar.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting affects the taskbar, which is used to switch between running applications.
# 
# The taskbar includes the Start button, list of currently running tasks, and the notification area. By default, the taskbar is located at the bottom of the screen, but it can be dragged to any side of the screen. When it is locked, it cannot be moved or resized.
# 
# If you enable this setting, it prevents the user from moving or resizing the taskbar. While the taskbar is locked, auto-hide and other taskbar options are still available in Taskbar properties.
# 
# If you disable this setting or do not configure it, the user can configure the taskbar position.
# 
# Note: Enabling this setting also locks the QuickLaunch bar and any other toolbars that the user has on their taskbar. The toolbar's position is locked, and the user cannot show and hide various toolbars using the taskbar context menu.
Lock the Taskbar:
  lgpo.set:
  - name: LockTaskbar
  - setting: Enabled
  - policy_class: User
