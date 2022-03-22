# windows:SUPPORTED_Win2k
#
# This policy setting determines whether disk quota limits are enforced and prevents users from changing the setting.
# 
# If you enable this policy setting, disk quota limits are enforced. If you disable this policy setting, disk quota limits are not enforced. When you enable or disable this policy setting, the system disables the "Deny disk space to users exceeding quota limit" option on the Quota tab so administrators cannot make changes while the setting is in effect.
# 
# If you do not configure this policy setting, the disk quota limit is not enforced by default, but administrators can change the setting.
# 
# Enforcement is optional. When users reach an enforced disk quota limit, the system responds as though the physical space on the volume were exhausted. When users reach an unenforced limit, their status in the Quota Entries window changes, but they can continue to write to the volume as long as physical space is available.
# 
# Note: This policy setting overrides user settings that enable or disable quota enforcement on their volumes.
# 
# Note: To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.
Enforce disk quota limit:
  lgpo.set:
  - name: DQ_Enforce
  - setting: Enabled
  - policy_class: Machine
