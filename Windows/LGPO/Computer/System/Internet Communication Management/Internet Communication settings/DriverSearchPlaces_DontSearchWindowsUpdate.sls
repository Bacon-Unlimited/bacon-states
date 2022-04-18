# windows:SUPPORTED_WindowsVistaToXPSP2
#
# This policy setting specifies whether Windows searches Windows Update for device drivers when no local drivers for a device are present.
# 
# If you enable this policy setting, Windows Update is not searched when a new device is installed.
# 
# If you disable this policy setting, Windows Update is always searched for drivers when no local drivers are present.
# 
# If you do not configure this policy setting, searching Windows Update is optional when installing a device.
# 
# Also see "Turn off Windows Update device driver search prompt" in "Administrative Templates/System," which governs whether an administrator is prompted before searching Windows Update for device drivers if a driver is not found locally.
# 
# Note: This policy setting is replaced by "Specify Driver Source Search Order" in "Administrative Templates/System/Device Installation" on newer versions of Windows.
Turn off Windows Update device driver searching:
  lgpo.set:
  - name: DriverSearchPlaces_DontSearchWindowsUpdate
  - setting: Enabled
  - policy_class: Machine
