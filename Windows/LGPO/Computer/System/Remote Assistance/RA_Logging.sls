# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.
# 
# If you enable this policy setting, log files are generated.
# 
# If you disable this policy setting, log files are not generated.
# 
# If you do not configure this setting, application-based settings are used.
Turn on session logging:
  lgpo.set:
  - name: RA_Logging
  - setting: Enabled
  - policy_class: Machine
