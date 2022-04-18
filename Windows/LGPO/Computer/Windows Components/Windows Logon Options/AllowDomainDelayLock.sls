# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether a user can change the time before a password is required when a Connected Standby device screen turns off.
# 
# If you enable this policy setting, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.
# 
# If you disable this policy setting, a user cannot change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.
# 
# If you don't configure this policy setting on a domain-joined device, a user cannot change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.
# 
# If you don't configure this policy setting on a workgroup device, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.
Allow users to select when a password is required when resuming from connected standby:
  lgpo.set:
  - name: AllowDomainDelayLock
  - setting: Enabled
  - policy_class: Machine
