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
# LOCATION: \User\Start Menu and Taskbar\DisableNotificationCenter.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting removes Notifications and Action Center from the notification area on the taskbar.
# 
# The notification area is located at the far right end of the taskbar and includes icons for current notifications and the system clock.  
# 
# If this setting is enabled, Notifications and Action Center is not displayed in the notification area. The user will be able to read notifications when they appear, but they wont be able to review any notifications they miss. 
# 
# If you disable or do not configure this policy setting, Notification and Security and Maintenance will be displayed on the taskbar. 
# 
# A reboot is required for this policy setting to take effect.
Remove Notifications and Action Center:
  lgpo.set:
  - name: DisableNotificationCenter
  - setting: Enabled
  - policy_class: User
