# windows:SUPPORTED_Windows_10_0_RS7
#
# This policy setting allows you to specify a list of Plug and Play device instance IDs for devices that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.
# 
# If you enable this policy setting, Windows is prevented from installing a device whose device instance ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.
Prevent installation of devices that match any of these device instance IDs:
  lgpo.set:
  - name: DeviceInstall_Instance_IDs_Deny
  - setting:
      DeviceInstall_Instance_IDs_Deny_List:
      - placeholder1
      - placeholder2
      DeviceInstall_Instance_IDs_Deny_Retroactive: boolean-placeholder
  - policy_class: Machine
