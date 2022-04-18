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
