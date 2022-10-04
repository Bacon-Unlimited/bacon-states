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
# LOCATION: \Computer\Windows Components\Windows Update\EngagedRestartTransitionSchedule.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.
# 
# You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.
# 
# You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.
# 
# If you do not specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.
# 
# If you disable or do not configure this policy, the PC will restart following the default schedule.
# 
# Enabling any of the following policies will override the above policy:
#     1. No auto-restart with logged on users for scheduled automatic updates installations
#     2. Always automatically restart at scheduled time
#     3. Specify deadline before auto-restart for update installation
#       
Specify Engaged restart transition and notification schedule for updates:
  lgpo.set:
  - name: EngagedRestartTransitionSchedule
  - setting:
      EngagedRestartDeadline: enum-placeholder
      EngagedRestartDeadlineForFeatureUpdates: enum-placeholder
      EngagedRestartSnoozeSchedule: enum-placeholder
      EngagedRestartSnoozeScheduleForFeatureUpdates: enum-placeholder
      EngagedRestartTransitionSchedule: enum-placeholder
      EngagedRestartTransitionScheduleForFeatureUpdates: enum-placeholder
  - policy_class: Machine
