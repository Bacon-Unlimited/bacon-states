# windows:SUPPORTED_Windows7
#
# This policy setting allows you to prevent Windows from retrieving device metadata from the Internet.
#           
# If you enable this policy setting, Windows does not retrieve device metadata for installed devices from the Internet. This policy setting overrides the setting in the Device Installation Settings dialog box (Control Panel > System and Security > System > Advanced System Settings > Hardware tab).
# 
# If you disable or do not configure this policy setting, the setting in the Device Installation Settings dialog box controls whether Windows retrieves device metadata from the Internet.
Prevent device metadata retrieval from the Internet:
  lgpo.set:
  - name: DeviceMetadata_PreventDeviceMetadataFromNetwork
  - setting: Enabled
  - policy_class: Machine
