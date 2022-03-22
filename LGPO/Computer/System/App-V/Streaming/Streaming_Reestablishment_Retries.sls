# windows:SUPPORTED_Windows7
#
# Specifies the number of times to retry a dropped session.
Reestablishment Retries:
  lgpo.set:
  - name: Streaming_Reestablishment_Retries
  - setting:
      Streaming_Reestablishment_Retries_Prompt: decimal-placeholder
  - policy_class: Machine
