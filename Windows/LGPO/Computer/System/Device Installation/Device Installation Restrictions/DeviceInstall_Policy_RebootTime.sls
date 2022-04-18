# windows:SUPPORTED_Windows7
#
# This policy setting establishes the amount of time (in seconds) that the system will wait to reboot in order to enforce a change in device installation restriction policies.
# 
# If you enable this policy setting, set the amount of seconds you want the system to wait until a reboot.
# 
# If you disable or do not configure this policy setting, the system does not force a reboot.
# 
# Note: If no reboot is forced, the device installation restriction right will not take effect until the system is restarted.
Time (in seconds) to force reboot when required for policy changes to take effect:
  lgpo.set:
  - name: DeviceInstall_Policy_RebootTime
  - setting:
      DeviceInstall_Policy_RebootTime_Time: decimal-placeholder
  - policy_class: Machine
