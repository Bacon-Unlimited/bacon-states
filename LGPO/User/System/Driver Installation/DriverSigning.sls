# windows:SUPPORTED_WindowsPreVista
#
# Determines how the system responds when a user tries to install driver package files that are not digitally signed.
# 
# This setting establishes the least secure response permitted on the systems of users in the group. Users can use System in Control Panel to select a more secure setting, but when this setting is enabled, the system does not implement any setting less secure than the one the setting established.
# 
# When you enable this setting, use the drop-down box to specify the desired response.
# 
# --   "Ignore" directs the system to proceed with the installation even if it includes unsigned files.
# 
# --   "Warn" notifies the user that files are not digitally signed and lets the user decide whether to stop or to proceed with the installation and whether to permit unsigned files to be installed. "Warn" is the default.
# 
# --   "Block" directs the system to refuse to install unsigned files. As a result, the installation stops, and none of the files in the driver package are installed.
# 
# To change driver file security without specifying a setting, use System in Control Panel. Right-click My Computer, click Properties, click the Hardware tab, and then click the Driver Signing button.
Code signing for driver packages:
  lgpo.set:
  - name: DriverSigning
  - setting:
      DriverSigningOp: enum-placeholder
  - policy_class: User
