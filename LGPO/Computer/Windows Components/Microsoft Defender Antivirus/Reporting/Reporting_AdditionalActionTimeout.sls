# windows:SUPPORTED_Windows8
#
# This policy setting configures the time in minutes before a detection in the "additional action" state moves to the "cleared" state.
Configure time out for detections requiring additional action:
  lgpo.set:
  - name: Reporting_AdditionalActionTimeout
  - setting:
      Reporting_AdditionalActionTimeout: decimal-placeholder
  - policy_class: Machine
