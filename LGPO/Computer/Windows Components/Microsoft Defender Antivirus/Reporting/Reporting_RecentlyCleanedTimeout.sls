# windows:SUPPORTED_Windows8
#
# This policy setting configures the time in minutes before a detection in the "completed" state moves to the "cleared" state.
Configure time out for detections in recently remediated state:
  lgpo.set:
  - name: Reporting_RecentlyCleanedTimeout
  - setting:
      Reporting_RecentlyCleanedTimeout: decimal-placeholder
  - policy_class: Machine
