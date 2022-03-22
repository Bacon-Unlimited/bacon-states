# windows:SUPPORTED_Windows8
#
# This policy setting configures the time in minutes before a detection in the “critically failed” state to moves to either the “additional action” state or the “cleared” state.
Configure time out for detections in critically failed state:
  lgpo.set:
  - name: Reporting_CriticalFailureTimeout
  - setting:
      Reporting_CriticalFailureTimeout: decimal-placeholder
  - policy_class: Machine
