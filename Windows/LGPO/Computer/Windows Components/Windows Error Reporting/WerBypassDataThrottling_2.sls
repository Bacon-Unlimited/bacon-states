# windows:SUPPORTED_Windows7
#
# This policy setting determines whether Windows Error Reporting (WER) sends additional, second-level report data even if a CAB file containing data about the same event types has already been uploaded to the server.
# 
# If you enable this policy setting, WER does not throttle data; that is, WER uploads additional CAB files that can contain data about the same event types as an earlier uploaded report.
# 
# If you disable or do not configure this policy setting, WER throttles data by default; that is, WER does not upload more than one CAB file for a report that contains data about the same event types.
Do not throttle additional data:
  lgpo.set:
  - name: WerBypassDataThrottling_2
  - setting: Enabled
  - policy_class: Machine
