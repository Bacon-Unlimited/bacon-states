# windows:SUPPORTED_Windows8
#
# This policy setting configures the time in minutes before a detection in the "non-critically failed" state moves to the "cleared" state.
Configure time out for detections in non-critical failed state:
  lgpo.set:
  - name: Reporting_NonCriticalTimeout
  - setting:
      Reporting_NonCriticalTimeout: decimal-placeholder
  - policy_class: Machine
