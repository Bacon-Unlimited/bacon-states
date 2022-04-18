# windows:SUPPORTED_Win2k
#
# This policy setting extends the disk quota policies in this folder to NTFS file system volumes on removable media.
# 
# If you disable or do not configure this policy setting, the disk quota policies established in this folder apply to fixed-media NTFS volumes only. Note: When this policy setting is applied, the computer will apply the disk quota to both fixed and removable media.
Apply policy to removable media:
  lgpo.set:
  - name: DQ_RemovableMedia
  - setting: Enabled
  - policy_class: Machine
