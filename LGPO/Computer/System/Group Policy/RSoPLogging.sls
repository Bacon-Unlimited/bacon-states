# windows:SUPPORTED_WindowsXP
#
# This setting allows you to enable or disable Resultant Set of Policy (RSoP) logging on a client computer.
# 
# RSoP logs information on Group Policy settings that have been applied to the client. This information includes details such as which Group Policy Objects (GPO) were applied, where they came from, and the client-side extension settings that were included.
# 
# If you enable this setting, RSoP logging is turned off.
# 
# If you disable or do not configure this setting, RSoP logging is turned on. By default, RSoP logging is always on.
# 
# Note: To view the RSoP information logged on a client computer, you can use the RSoP snap-in in the Microsoft Management Console (MMC).
Turn off Resultant Set of Policy logging:
  lgpo.set:
  - name: RSoPLogging
  - setting: Enabled
  - policy_class: Machine
