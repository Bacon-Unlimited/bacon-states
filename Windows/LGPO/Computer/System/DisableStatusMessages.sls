# windows:SUPPORTED_WindowsPreVista
#
# This policy setting suppresses system status messages.
# 
# If you enable this setting, the system does not display a message reminding users to wait while their system starts or shuts down, or while users log on or off.
# 
# If you disable or do not configure this policy setting, the system displays the message reminding users to wait while their system starts or shuts down, or while users log on or off.
Remove Boot / Shutdown / Logon / Logoff status messages:
  lgpo.set:
  - name: DisableStatusMessages
  - setting: Enabled
  - policy_class: Machine
