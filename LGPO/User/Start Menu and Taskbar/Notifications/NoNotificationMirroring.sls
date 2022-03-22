# windows:SUPPORTED_Windows_10_0
#
# 
#           This policy setting turns off notification mirroring.
# 
#           If you enable this policy setting, notifications from applications and system will not be mirrored to your other devices.
# 
#           If you disable or do not configure this policy setting, notifications will be mirrored, and can be turned off by the administrator or user.
# 
#           No reboots or service restarts are required for this policy setting to take effect.
#       
Turn off notification mirroring:
  lgpo.set:
  - name: NoNotificationMirroring
  - setting: Enabled
  - policy_class: User
