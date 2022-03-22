# windows:SUPPORTED_Win2k
#
# This policy setting turns on and turns off disk quota management on all NTFS volumes of the computer, and prevents users from changing the setting.
# 
# If you enable this policy setting, disk quota management is turned on, and users cannot turn it off.
# 
# If you disable the policy setting, disk quota management is turned off, and users cannot turn it on.
# 
# If this policy setting is not configured, disk quota management is turned off by default, but administrators can turn it on.
# 
# To prevent users from changing the setting while a setting is in effect, the system disables the "Enable quota management" option on the Quota tab of NTFS volumes.
# 
# Note: This policy setting turns on disk quota management but does not establish or enforce a particular disk quota limit. To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.
# 
# Note: To turn on or turn off disk quota management without specifying a setting, in My Computer, right-click the name of an NTFS volume, click Properties, click the Quota tab, and then click "Enable quota management."
Enable disk quotas:
  lgpo.set:
  - name: DQ_Enable
  - setting: Enabled
  - policy_class: Machine
