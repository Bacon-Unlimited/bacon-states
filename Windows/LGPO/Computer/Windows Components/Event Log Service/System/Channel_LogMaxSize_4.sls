# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the maximum size of the log file in kilobytes.
# 
# If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes), in kilobyte increments.
# 
# If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.
Specify the maximum log file size (KB):
  lgpo.set:
  - name: Channel_LogMaxSize_4
  - setting:
      Channel_LogMaxSize: decimal-placeholder
  - policy_class: Machine
