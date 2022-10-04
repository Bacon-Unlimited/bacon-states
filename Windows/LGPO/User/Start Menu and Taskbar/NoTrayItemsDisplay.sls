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
# LOCATION: \User\Start Menu and Taskbar\NoTrayItemsDisplay.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting affects the notification area (previously called the "system tray") on the taskbar.
# 
# Description: The notification area is located at the far right end of the task bar and includes the icons for current notifications and the system clock.
# 
# If this setting is enabled, the users entire notification area, including the notification icons, is hidden. The taskbar displays only the Start button, taskbar buttons, custom toolbars (if any), and the system clock.
# 
# If this setting is disabled or is not configured, the notification area is shown in the user's taskbar.
# 
# Note: Enabling this setting overrides the "Turn off notification area cleanup" setting, because if the notification area is hidden, there is no need to clean up the icons.
Hide the notification area:
  lgpo.set:
  - name: NoTrayItemsDisplay
  - setting: Enabled
  - policy_class: User
