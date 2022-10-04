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
# LOCATION: \User\Start Menu and Taskbar\Notifications\NoToastNotification.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#           This policy setting turns off toast notifications for applications.
# 
#           If you enable this policy setting, applications will not be able to raise toast notifications.
# 
#           Note that this policy does not affect taskbar notification balloons.
# 
#           Note that Windows system features are not affected by this policy.  You must enable/disable system features individually to stop their ability to raise toast notifications.
# 
#           If you disable or do not configure this policy setting, toast notifications are enabled and can be turned off by the administrator or user.
# 
#           No reboots or service restarts are required for this policy setting to take effect.
#       
Turn off toast notifications:
  lgpo.set:
  - name: NoToastNotification
  - setting: Enabled
  - policy_class: User
