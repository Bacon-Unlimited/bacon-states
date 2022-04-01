# WS4Only
#
# This policy setting configures how Windows Search adds shared folders to the search index.
# 
# If you enable this policy setting, Windows Search is prevented from automatically adding shared folders to the index. Windows Search does not automatically add shares created on the computer to the scope of the index.
# 
# If you disable or do not configure this policy setting, Windows Search monitors which folders are shared or not shared on this computer, and automatically adds them to or removes them from the index.
Prevent automatically adding shared folders to the Windows Search index:
  lgpo.set:
  - name: AutoIndexSharedFolders
  - setting: Enabled
  - policy_class: Machine
