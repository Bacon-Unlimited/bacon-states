# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for driver packages that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.
# 
# NOTE: To enable the "Allow installation of devices that match any of these device IDs" and "Allow installation of devices that match any of these device instance IDs" policy settings to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.
#  
# If you enable this policy setting, Windows is prevented from installing or updating driver packages whose device setup class GUIDs appear in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.
Prevent installation of devices using drivers that match these device setup classes:
  lgpo.set:
  - name: DeviceInstall_Classes_Deny
  - setting:
      DeviceInstall_Classes_Deny_List:
      - placeholder1
      - placeholder2
      DeviceInstall_Classes_Deny_Retroactive: boolean-placeholder
  - policy_class: Machine
