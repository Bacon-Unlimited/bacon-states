# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the behavior of the Windows Error Reporting archive.
# 
# If you enable this policy setting, you can configure Windows Error Reporting archiving behavior. If Archive behavior is set to Store all, all data collected for each error report is stored in the appropriate location. If Archive behavior is set to Store parameters only, only the minimum information required to check for an existing solution is stored. The Maximum number of reports to store setting determines how many reports are stored before older reports are automatically deleted.
# 
# If you disable or do not configure this policy setting, no Windows Error Reporting information is stored.
Configure Report Archive:
  lgpo.set:
  - name: WerArchive_2
  - setting:
      WerArchiveBehavior: enum-placeholder
      WerMaxArchiveCount: decimal-placeholder
  - policy_class: Machine
