# windows:SUPPORTED_Windows7
#
# These settings provide control over whether or not short names are generated during file creation.  Some applications require short names for compatibility, but short names have a negative performance impact on the system.
# 
# If you enable short names on all volumes then short names will always be generated.  If you disable them on all volumes then they will never be generated.  If you set short name creation to be configurable on a per volume basis then an on-disk flag will determine whether or not short names are created on a given volume.  If you disable short name creation on all data volumes then short names will only be generated for files created on the system volume.
Short name creation options:
  lgpo.set:
  - name: ShortNameCreationSettings
  - setting:
      ShortNameCreationSetting_Levels: enum-placeholder
  - policy_class: Machine
