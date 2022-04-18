# windows:SUPPORTED_Win2k
#
# This policy setting prevents File Explorer from encrypting files that are moved to an encrypted folder.
# 
# If you enable this policy setting, File Explorer will not automatically encrypt files that are moved to an encrypted folder.
# 
# If you disable or do not configure this policy setting, File Explorer automatically encrypts files that are moved to an encrypted folder.
# 
# This setting applies only to files moved within a volume. When files are moved to other volumes, or if you create a new file in an encrypted folder, File Explorer encrypts those files automatically.
Do not automatically encrypt files moved to encrypted folders:
  lgpo.set:
  - name: NoEncryptOnMove
  - setting: Enabled
  - policy_class: Machine
