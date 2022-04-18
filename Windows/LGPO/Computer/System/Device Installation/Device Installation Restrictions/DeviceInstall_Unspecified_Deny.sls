# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent the installation of devices that are not specifically described by any other policy setting.
# 
# NOTE: This policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting to provide more granular control. It is recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting instead of this policy setting.
# 
# If you enable this policy setting, Windows is prevented from installing or updating the driver package for any device that is not described by either the "Allow installation of devices that match any of these device IDs", the "Allow installation of devices for these device classes", or the "Allow installation of devices that match any of these device instance IDs" policy setting.
# 
# If you disable or do not configure this policy setting, Windows is allowed to install or update the driver package for any device that is not described by the "Prevent installation of devices that match any of these device IDs", "Prevent installation of devices for these device classes" policy setting, "Prevent installation of devices that match any of these device instance IDs", or "Prevent installation of removable devices" policy setting.
Prevent installation of devices not described by other policy settings:
  lgpo.set:
  - name: DeviceInstall_Unspecified_Deny
  - setting: Enabled
  - policy_class: Machine
