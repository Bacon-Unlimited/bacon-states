# windows:SUPPORTED_Win2k
#
# This policy setting determines whether the system records an event in the Application log when users reach their disk quota warning level on a volume.
# 
# If you enable this policy setting, the system records an event. If you disable this policy setting, no event is recorded. When you enable or disable this policy setting, the system disables the corresponding "Log event when a user exceeds their warning level" option on the Quota tab so that administrators cannot change logging while a policy setting is in effect.
# 
# If you do not configure this policy setting, no event is recorded, but administrators can use the Quota tab option to change the logging setting.
# 
# This policy setting does not affect the Quota Entries window on the Quota tab. Even without the logged event, users can detect that they have reached their warning level because their status in the Quota Entries window changes.
# 
# Note: To find the logging option, in My Computer, right-click the name of an NTFS file system volume, click Properties, and then click the Quota tab.
Log event when quota warning level is exceeded:
  lgpo.set:
  - name: DQ_LogEventOverThreshold
  - setting: Enabled
  - policy_class: Machine
