# windows:SUPPORTED_Windows_10_0_NOARM
#
# If you enable this policy, the PC will not automatically restart after updates during active hours. The PC will attempt to restart outside of active hours.
# 
# Note that the PC must restart for certain updates to take effect.
# 
# If you disable or do not configure this policy and have no other reboot group policies, the user selected active hours will be in effect.
# 
# If any of the following two policies are enabled, this policy has no effect:
#     1. No auto-restart with logged on users for scheduled automatic updates installations.
#     2. Always automatically restart at scheduled time.
# 
# Note that the default max active hours range is 18 hours from the active hours start time unless otherwise configured via the Specify active hours range for auto-restarts policy.
Turn off auto-restart for updates during active hours:
  lgpo.set:
  - name: ActiveHours
  - setting:
      ActiveHoursEndTime: enum-placeholder
      ActiveHoursStartTime: enum-placeholder
  - policy_class: Machine
