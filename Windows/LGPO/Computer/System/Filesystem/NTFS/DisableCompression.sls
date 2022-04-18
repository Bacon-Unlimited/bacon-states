# windows:SUPPORTED_Windows7
#
# Compression can add to the processing overhead of filesystem operations.  Enabling this setting will prevent access to and creation of compressed files. 
Do not allow compression on all NTFS volumes:
  lgpo.set:
  - name: DisableCompression
  - setting: Enabled
  - policy_class: Machine
