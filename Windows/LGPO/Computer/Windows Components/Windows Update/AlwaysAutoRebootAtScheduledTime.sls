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
# LOCATION: \Computer\Windows Components\Windows Update\AlwaysAutoRebootAtScheduledTime.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# If you enable this policy, a restart timer will always begin immediately after Windows Update installs important updates, instead of first notifying users on the login screen for at least two days.
# 
# The restart timer can be configured to start with any value from 15 to 180 minutes. When the timer runs out, the restart will proceed even if the PC has signed-in users.
# 
# If you disable or do not configure this policy, Windows Update will not alter its restart behavior.
# 
# If the "No auto-restart with logged on users for scheduled automatic updates installations" policy is enabled, then this policy has no effect.
Always automatically restart at the scheduled time:
  lgpo.set:
  - name: AlwaysAutoRebootAtScheduledTime
  - setting:
      AlwaysAutoRebootAtScheduledTime_Minutes: decimal-placeholder
  - policy_class: Machine
