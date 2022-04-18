# windows:SUPPORTED_WindowsVista
#
# This policy setting turns on logging.
# 
# If you enable or do not configure this policy setting, then events can be written to this log.
# 
# If the policy setting is disabled, then no new events can be logged. Events can always be read from the log, regardless of this policy setting.
Turn on logging:
  lgpo.set:
  - name: Channel_LogEnabled
  - setting: Enabled
  - policy_class: Machine
