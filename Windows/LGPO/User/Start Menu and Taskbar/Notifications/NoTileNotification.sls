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
# LOCATION: \User\Start Menu and Taskbar\Notifications\NoTileNotification.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#           This policy setting turns off tile notifications.
# 
#           If you enable this policy setting, applications and system features will not be able to update their tiles and tile badges in the Start screen.
# 
#           If you disable or do not configure this policy setting, tile and badge notifications are enabled and can be turned off by the administrator or user.
# 
#           No reboots or service restarts are required for this policy setting to take effect.
#       
Turn off tile notifications:
  lgpo.set:
  - name: NoTileNotification
  - setting: Enabled
  - policy_class: User
