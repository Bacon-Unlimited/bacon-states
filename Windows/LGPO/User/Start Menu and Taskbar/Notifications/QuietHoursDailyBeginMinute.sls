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
# LOCATION: \User\Start Menu and Taskbar\Notifications\QuietHoursDailyBeginMinute.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# 
#         This policy setting specifies the number of minutes after midnight (local time) that Quiet Hours is to begin each day.
# 
#         If you enable this policy setting, the specified time will be used, and users will not be able to customize any Quiet Hours settings.
# 
#         If you disable this policy setting, a default value will be used, and users will not be able to change it or any other Quiet Hours setting.
# 
#         If you do not configure this policy setting, a default value will be used, which administrators and users will be able to modify.
#       
Set the time Quiet Hours begins each day:
  lgpo.set:
  - name: QuietHoursDailyBeginMinute
  - setting:
      QuietHoursDailyBeginMinuteControl: decimal-placeholder
  - policy_class: User
