# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies the level of debug output for the Net Logon service.
# 
# The Net Logon service outputs debug information to the log file netlogon.log in the directory %windir%\debug. By default, no debug information is logged.
# 
# If you enable this policy setting and specify a non-zero value, debug information will be logged to the file.  Higher values result in more verbose logging; the value of 536936447 is commonly used as an optimal setting.
# 
# If you specify zero for this policy setting, the default behavior occurs as described above.
# 
# If you disable this policy setting or do not configure it, the default behavior occurs as described above.
Specify log file debug output level:
  lgpo.set:
  - name: Netlogon_DebugFlag
  - setting:
      Netlogon_DebugFlagLabel: decimal-placeholder
  - policy_class: Machine
