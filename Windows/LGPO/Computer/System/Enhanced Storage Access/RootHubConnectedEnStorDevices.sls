# windows:SUPPORTED_Windows7
#
# This policy setting configures whether or not only USB root hub connected Enhanced Storage devices are allowed. Allowing only root hub connected Enhanced Storage devices minimizes the risk of an unauthorized USB device reading data on an Enhanced Storage device.
# 
# If you enable this policy setting, only USB root hub connected Enhanced Storage devices are allowed.
# 
# If you disable or do not configure this policy setting, USB Enhanced Storage devices connected to both USB root hubs and non-root hubs will be allowed.
Allow only USB root hub connected Enhanced Storage devices:
  lgpo.set:
  - name: RootHubConnectedEnStorDevices
  - setting: Enabled
  - policy_class: Machine
