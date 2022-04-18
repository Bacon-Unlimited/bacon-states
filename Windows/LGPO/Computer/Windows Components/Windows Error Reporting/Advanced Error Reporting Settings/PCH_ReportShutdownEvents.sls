# windows:SUPPORTED_WindowsNETOnly
#
# This policy setting controls whether or not unplanned shutdown events can be reported when error reporting is enabled.
# 
# If you enable this policy setting, error reporting includes unplanned shutdown events.
# 
# If you disable this policy setting, unplanned shutdown events are not included in error reporting.
# 
# If you do not configure this policy setting, users can adjust this setting using the control panel, which is set to "Upload unplanned shutdown events" by default.
# 
# Also see the "Configure Error Reporting" policy setting.
Report unplanned shutdown events:
  lgpo.set:
  - name: PCH_ReportShutdownEvents
  - setting: Enabled
  - policy_class: Machine
