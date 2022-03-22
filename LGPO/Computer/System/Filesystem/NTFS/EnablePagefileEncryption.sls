# windows:SUPPORTED_Windows7
#
# Encrypting the page file prevents malicious users from reading data that has been paged to disk, but also adds processing overhead for filesystem operations.  Enabling this setting will cause the page files to be encrypted.
Enable NTFS pagefile encryption:
  lgpo.set:
  - name: EnablePagefileEncryption
  - setting: Enabled
  - policy_class: Machine
