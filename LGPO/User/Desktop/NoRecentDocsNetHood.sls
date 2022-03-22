# windows:SUPPORTED_WindowsPreVista
#
# Remote shared folders are not added to Network Locations whenever you open a document in the shared folder.
# 
# If you disable this setting or do not configure it, when you open a document in a remote shared folder, the system adds a connection to the shared folder to Network Locations.
# 
# If you enable this setting, shared folders are not added to Network Locations automatically when you open a document in the shared folder.
Do not add shares of recently opened documents to Network Locations:
  lgpo.set:
  - name: NoRecentDocsNetHood
  - setting: Enabled
  - policy_class: User
