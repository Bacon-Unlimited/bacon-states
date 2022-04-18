# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to configure how often a Distributed File System (DFS) client attempts to discover domain controllers on a network. By default, a DFS client attempts to discover domain controllers every 15 minutes.
# 
# If you enable this policy setting, you can configure how often a DFS client attempts to discover domain controllers. This value is specified in minutes.
# 
# If you disable or do not configure this policy setting, the default value of 15 minutes applies.
# 
# Note: The minimum value you can select is 15 minutes. If you try to set this setting to a value less than 15 minutes, the default value of 15 minutes is applied.
Configure how often a DFS client discovers domain controllers:
  lgpo.set:
  - name: DFSDiscoverDC
  - setting:
      DFSDiscoverDialog: decimal-placeholder
  - policy_class: Machine
