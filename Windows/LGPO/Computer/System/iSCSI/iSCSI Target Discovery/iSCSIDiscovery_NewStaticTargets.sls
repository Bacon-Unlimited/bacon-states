# windows:SUPPORTED_WindowsVista
#
# If enabled then new targets may not be manually configured by entering the target name and target portal; already discovered targets may be manually configured. If disabled then new and already discovered targets may be manually configured.  Note: if enabled there may be cases where this will break VDS.
Do not allow adding new targets via manual configuration:
  lgpo.set:
  - name: iSCSIDiscovery_NewStaticTargets
  - setting: Enabled
  - policy_class: Machine
