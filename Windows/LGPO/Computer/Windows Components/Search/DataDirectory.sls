# VistaOrRedist
#
# Store indexer database in this directory. This directory must be located on a local fixed drive.
Indexer data location:
  lgpo.set:
  - name: DataDirectory
  - setting:
      PartDataDirectory: text-placeholder
  - policy_class: Machine
