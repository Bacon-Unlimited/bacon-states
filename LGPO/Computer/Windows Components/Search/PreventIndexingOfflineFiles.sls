# VistaOnly
#
# If enabled, files on network shares made available offline are not indexed. Otherwise they are indexed. Disabled by default.
Prevent indexing files in offline files cache:
  lgpo.set:
  - name: PreventIndexingOfflineFiles
  - setting: Enabled
  - policy_class: Machine
