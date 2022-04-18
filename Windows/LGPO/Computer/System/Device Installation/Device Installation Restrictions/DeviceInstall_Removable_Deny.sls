# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent Windows from installing removable devices. A device is considered removable when the driver for the device to which it is connected indicates that the device is removable. For example, a Universal Serial Bus (USB) device is reported to be removable by the drivers for the USB hub to which the device is connected. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.
# 
# NOTE: To enable the "Allow installation of devices using drivers that match these device setup classes", "Allow installation of devices that match any of these device IDs", and "Allow installation of devices that match any of these device instance IDs" policy settings to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.
# 
# If you enable this policy setting, Windows is prevented from installing removable devices and existing removable devices cannot have their drivers updated. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of removable devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, Windows can install and update driver packages for removable devices as allowed or prevented by other policy settings.
Prevent installation of removable devices:
  lgpo.set:
  - name: DeviceInstall_Removable_Deny
  - setting: Enabled
  - policy_class: Machine
