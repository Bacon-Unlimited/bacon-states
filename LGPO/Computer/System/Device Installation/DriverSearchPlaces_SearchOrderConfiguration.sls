# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the order in which Windows searches source locations for device drivers. 
# 
# If you enable this policy setting, you can select whether Windows searches for drivers on Windows Update unconditionally, only if necessary, or not at all.
# 
# Note that searching always implies that Windows will attempt to search Windows Update exactly one time. With this setting, Windows will not continually search for updates. This setting is used to ensure that the best software will be found for the device, even if the network is temporarily available.
# 
# If the setting for searching only if needed is specified, then Windows will search for a driver only if a driver is not locally available on the system.
# 
# If you disable or do not configure this policy setting, members of the Administrators group can determine the priority order in which Windows searches source locations for device drivers.
Specify search order for device driver source locations:
  lgpo.set:
  - name: DriverSearchPlaces_SearchOrderConfiguration
  - setting:
      DriverSearchPlaces_SearchOrderConfiguration_dropdown: enum-placeholder
  - policy_class: Machine
