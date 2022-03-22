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
