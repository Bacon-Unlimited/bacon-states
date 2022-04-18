# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether Windows Error Reporting saves its own events and error messages to the system event log.
# 
# If you enable this policy setting, Windows Error Reporting events are not recorded in the system event log.
# 
# If you disable or do not configure this policy setting, Windows Error Reporting events and errors are logged to the system event log, as with other Windows-based programs.
Disable logging:
  lgpo.set:
  - name: WerNoLogging_2
  - setting: Enabled
  - policy_class: Machine
