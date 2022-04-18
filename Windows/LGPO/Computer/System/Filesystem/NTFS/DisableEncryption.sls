# windows:SUPPORTED_Windows7
#
# Encryption can add to the processing overhead of filesystem operations.  Enabling this setting will prevent access to and creation of encrypted files
Do not allow encryption on all NTFS volumes:
  lgpo.set:
  - name: DisableEncryption
  - setting: Enabled
  - policy_class: Machine
