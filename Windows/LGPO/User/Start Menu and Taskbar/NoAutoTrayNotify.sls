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
# LOCATION: \User\Start Menu and Taskbar\NoAutoTrayNotify.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This setting affects the notification area, also called the "system tray."
# 
# The notification area is located in the task bar, generally at the bottom of the screen, and it includes the clock and current notifications. This setting determines whether the items are always expanded or always collapsed. By default, notifications are collapsed. The notification cleanup << icon can be referred to as the "notification chevron."
# 
# If you enable this setting, the system notification area expands to show all of the notifications that use this area.
# 
# If you disable this setting, the system notification area will always collapse notifications.
# 
# If you do not configure it, the user can choose if they want notifications collapsed.
Turn off notification area cleanup:
  lgpo.set:
  - name: NoAutoTrayNotify
  - setting: Enabled
  - policy_class: User
