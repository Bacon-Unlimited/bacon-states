# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies the maximum size in bytes of the log file netlogon.log in the directory %windir%\debug when logging is enabled.
# 
# By default, the maximum size of the log file is 20MB. If you enable this policy setting, the maximum size of the log file is set to the specified size.  Once this size is reached the log file is saved to netlogon.bak and netlogon.log is truncated. A reasonable value based on available storage should be specified.
# 
# If you disable or do not configure this policy setting, the default behavior occurs as indicated above.
Specify maximum log file size:
  lgpo.set:
  - name: Netlogon_MaximumLogFileSize
  - setting:
      Netlogon_MaximumLogFileSizeLabel: decimal-placeholder
  - policy_class: Machine
