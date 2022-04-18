# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the amount of time (in seconds) that the operating system waits to reboot in order to enforce a change in access rights to removable storage devices.
# 
# If you enable this policy setting, you can set the number of seconds you want the system to wait until a reboot.
# 
# If you disable or do not configure this setting, the operating system does not force a reboot.
# 
# Note: If no reboot is forced, the access right does not take effect until the operating system is restarted.
Set time (in seconds) to force reboot:
  lgpo.set:
  - name: AccessRights_RebootTime_1
  - setting:
      AccessRights_RebootTime_seconds: decimal-placeholder
  - policy_class: User
