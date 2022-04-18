# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify whether the ribbon appears minimized or in full when new File Explorer windows are opened. If you enable this policy setting, you can set how the ribbon appears the first time users open File Explorer and whenever they open new windows. If you disable or do not configure this policy setting, users can choose how the ribbon appears when they open new windows.
Start File Explorer with ribbon minimized:
  lgpo.set:
  - name: ExplorerRibbonStartsMinimized
  - setting:
      ExplorerRibbonStartsMinimizedDropdown: enum-placeholder
  - policy_class: Machine
