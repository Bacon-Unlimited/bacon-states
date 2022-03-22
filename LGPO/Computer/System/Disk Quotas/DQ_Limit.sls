# windows:SUPPORTED_Win2k
#
# This policy setting specifies the default disk quota limit and warning level for new users of the volume.
# 
# This policy setting determines how much disk space can be used by each user on each of the NTFS file system volumes on a computer. It also specifies the warning level, the point at which the user's status in the Quota Entries window changes to indicate that the user is approaching the disk quota limit.
# 
# This setting overrides new users’ settings for the disk quota limit and warning level on their volumes, and it disables the corresponding options in the "Select the default quota limit for new users of this volume" section on the Quota tab.
# 
# This policy setting applies to all new users as soon as they write to the volume. It does not affect disk quota limits for current users, or affect customized limits and warning levels set for particular users (on the Quota tab in Volume Properties).
# 
# If you disable or do not configure this policy setting, the disk space available to users is not limited. The disk quota management feature uses the physical space on each volume as its quota limit and warning level.
# 
# When you select a limit, remember that the same limit applies to all users on all volumes, regardless of actual volume size. Be sure to set the limit and warning level so that it is reasonable for the range of volumes in the group.
# 
# This policy setting is effective only when disk quota management is enabled on the volume. Also, if disk quotas are not enforced, users can exceed the quota limit you set. When users reach the quota limit, their status in the Quota Entries window changes, but users can continue to write to the volume.
Specify default quota limit and warning level:
  lgpo.set:
  - name: DQ_Limit
  - setting:
      DQ_LimitUnits: enum-placeholder
      DQ_LimitValue: decimal-placeholder
      DQ_ThresholdUnits: enum-placeholder
      DQ_ThresholdValue: decimal-placeholder
  - policy_class: Machine
