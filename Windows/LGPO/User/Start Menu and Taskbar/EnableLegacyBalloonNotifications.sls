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
# LOCATION: \User\Start Menu and Taskbar\EnableLegacyBalloonNotifications.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy disables the functionality that converts balloons to toast notifications. 
# 
# If you enable this policy setting, system and application notifications will render as balloons instead of toast notifications.   
# 
# Enable this policy setting if a specific app or system component that uses balloon notifications has compatibility issues with toast notifications. 
# 
# If you disable or dont configure this policy setting, all notifications will appear as toast notifications.
# 
# A reboot is required for this policy setting to take effect.
Disable showing balloon notifications as toasts.:
  lgpo.set:
  - name: EnableLegacyBalloonNotifications
  - setting: Enabled
  - policy_class: User
