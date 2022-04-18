# windows:SUPPORTED_Windows7
#
# Specifies the number of seconds between attempts to reestablish a dropped session.
Reestablishment Interval:
  lgpo.set:
  - name: Streaming_Reestablishment_Interval
  - setting:
      Streaming_Reestablishment_Interval_Prompt: decimal-placeholder
  - policy_class: Machine
