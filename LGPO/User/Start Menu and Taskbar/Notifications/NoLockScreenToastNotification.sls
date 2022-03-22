# windows:SUPPORTED_Windows8
#
# 
#         This policy setting turns off toast notifications on the lock screen.
# 
#         If you enable this policy setting, applications will not be able to raise toast notifications on the lock screen.
# 
#         If you disable or do not configure this policy setting, toast notifications on the lock screen are enabled and can be turned off by the administrator or user.
# 
#         No reboots or service restarts are required for this policy setting to take effect.
#       
Turn off toast notifications on the lock screen:
  lgpo.set:
  - name: NoLockScreenToastNotification
  - setting: Enabled
  - policy_class: User
