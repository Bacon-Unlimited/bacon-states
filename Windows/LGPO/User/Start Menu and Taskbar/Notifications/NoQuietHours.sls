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
# LOCATION: \User\Start Menu and Taskbar\Notifications\NoQuietHours.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# 
#         This policy setting turns off Quiet Hours functionality.
#         
#         If you enable this policy setting, toast notifications will not be suppressed and some background tasks will not be deferred during the designated Quiet Hours time window each day.
#         
#         If you disable this policy setting, toast notifications will be suppressed and some background task deferred during the designated Quiet Hours time window.  Users will not be able to change this or any other Quiet Hours settings.
#         
#         If you do not configure this policy setting, Quiet Hours are enabled by default but can be turned off or by the administrator or user.
#       
Turn off Quiet Hours:
  lgpo.set:
  - name: NoQuietHours
  - setting: Enabled
  - policy_class: User
