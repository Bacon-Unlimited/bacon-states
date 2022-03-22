# windows:SUPPORTED_Win2k
#
# This policy setting determines whether the system records an event in the local Application log when users reach their disk quota limit on a volume, and prevents users from changing the logging setting.
# 
# If you enable this policy setting, the system records an event when the user reaches their limit. If you disable this policy setting, no event is recorded. Also, when you enable or disable this policy setting, the system disables the "Log event when a user exceeds their quota limit" option on the Quota tab, so administrators cannot change the setting while a setting is in effect.
# 
# If you do not configure this policy setting, no events are recorded, but administrators can use the Quota tab option to change the setting.
# 
# This policy setting is independent of the enforcement policy settings for disk quotas. As a result, you can direct the system to log an event, regardless of whether or not you choose to enforce the disk quota limit.
# 
# Also, this policy setting does not affect the Quota Entries window on the Quota tab. Even without the logged event, users can detect that they have reached their limit, because their status in the Quota Entries window changes.
# 
# Note: To find the logging option, in My Computer, right-click the name of an NTFS file system volume, click Properties, and then click the Quota tab.
Log event when quota limit is exceeded:
  lgpo.set:
  - name: DQ_LogEventOverLimit
  - setting: Enabled
  - policy_class: Machine
