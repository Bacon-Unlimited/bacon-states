# windows:SUPPORTED_Win2k
#
# This policy setting allows you to remove the DFS tab from File Explorer.
# 
# If you enable this policy setting, the DFS (Distributed File System) tab is removed from File Explorer and from other programs that use the File Explorer browser, such as My Computer. As a result, users cannot use this tab to view or change the properties of the DFS shares available from their computer.
# 
# This policy setting does not prevent users from using other methods to configure DFS.
# 
# If you disable or do not configure this policy setting, the DFS tab is available.
Remove DFS tab:
  lgpo.set:
  - name: NoDFSTab
  - setting: Enabled
  - policy_class: User
