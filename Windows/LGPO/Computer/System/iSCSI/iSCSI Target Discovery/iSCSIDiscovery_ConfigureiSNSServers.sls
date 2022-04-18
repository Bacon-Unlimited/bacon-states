# windows:SUPPORTED_WindowsVista
#
# If enabled then new iSNS servers may not be added and thus new targets discovered via those iSNS servers; existing iSNS servers may not be removed. If disabled then new iSNS servers may be added and thus new targets discovered via those iSNS servers; existing iSNS servers may be removed.
Do not allow manual configuration of iSNS servers:
  lgpo.set:
  - name: iSCSIDiscovery_ConfigureiSNSServers
  - setting: Enabled
  - policy_class: Machine
