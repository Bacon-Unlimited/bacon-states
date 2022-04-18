# windows:SUPPORTED_WindowsVista
#
# If enabled then new target portals may not be added and thus new targets discovered on those portals; existing target portals may not be removed. If disabled then new target portals may be added and thus new targets discovered on those portals; existing target portals may be removed.
Do not allow manual configuration of target portals:
  lgpo.set:
  - name: iSCSIDiscovery_ConfigureTargetPortals
  - setting: Enabled
  - policy_class: Machine
