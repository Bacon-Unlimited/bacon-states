# windows:SUPPORTED_WindowsVista
#
# If enabled then discovered targets may not be manually configured. If disabled then discovered targets may be manually configured. Note: if enabled there may be cases where this will break VDS.
Do not allow manual configuration of discovered targets:
  lgpo.set:
  - name: iSCSIDiscovery_ConfigureTargets
  - setting: Enabled
  - policy_class: Machine
