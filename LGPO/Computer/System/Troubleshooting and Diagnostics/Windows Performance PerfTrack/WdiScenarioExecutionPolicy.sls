# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether to enable or disable tracking of responsiveness events.
# 
# If you enable this policy setting, responsiveness events are processed and aggregated. The aggregated data will be transmitted to Microsoft through SQM.
# 
# if you disable this policy setting, responsiveness events are not processed.
# 
# If you do not configure this policy setting, the DPS will enable Windows Performance PerfTrack by default.
#       
Enable/Disable PerfTrack:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
