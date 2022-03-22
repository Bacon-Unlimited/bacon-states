# windows:SUPPORTED_Windows8
#
# This policy setting allows you to enable or disable randomization of the scheduled scan start time and the scheduled security intelligence update start time. This setting is used to distribute the resource impact of scanning. For example, it could be used in guest virtual machines sharing a host, to prevent multiple guest virtual machines from undertaking a disk-intensive operation at the same time.
# 
#     If you enable or do not configure this setting, scheduled tasks will begin at a random time within an interval of 30 minutes before and after the specified start time.
# 
#     If you disable this setting, scheduled tasks will begin at the specified start time.
Randomize scheduled task times:
  lgpo.set:
  - name: RandomizeScheduleTaskTimes
  - setting: Enabled
  - policy_class: Machine
