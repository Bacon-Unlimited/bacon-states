# windows:SUPPORTED_WindowsVistaToXPSP2
#
# Specifies whether the administrator will be prompted about going to Windows Update to search for device drivers using the Internet.
# 
# Note: This setting only has effect if "Turn off Windows Update device driver searching" in "Administrative Templates/System/Internet Communication Management/Internet Communication settings" is disabled or not configured.
# 
# If you enable this setting, administrators will not be prompted to search Windows Update.
# 
# If you disable or do not configure this setting, and "Turn off Windows Update device driver searching" is disabled or not configured, the administrator will be prompted for consent before going to Windows Update to search for device drivers.
Turn off Windows Update device driver search prompt:
  lgpo.set:
  - name: DriverSearchPlaces_DontPromptForWindowsUpdate_2
  - setting: Enabled
  - policy_class: Machine
