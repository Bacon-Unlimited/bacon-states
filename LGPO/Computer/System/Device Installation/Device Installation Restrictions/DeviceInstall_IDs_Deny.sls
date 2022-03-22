# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.
# 
# NOTE: To enable the "Allow installation of devices that match any of these device instance IDs" policy setting to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.
# 
# If you enable this policy setting, Windows is prevented from installing a device whose hardware ID or compatible ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.
Prevent installation of devices that match any of these device IDs:
  lgpo.set:
  - name: DeviceInstall_IDs_Deny
  - setting:
      DeviceInstall_IDs_Deny_List:
      - placeholder1
      - placeholder2
      DeviceInstall_IDs_Deny_Retroactive: boolean-placeholder
  - policy_class: Machine
