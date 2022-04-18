# windows:SUPPORTED_WindowsXPSP1
#
# This policy setting allows you to configure whether power is automatically turned off when Windows shutdown completes.  This setting does not affect Windows shutdown behavior when shutdown is manually selected using the Start menu or Task Manager user interfaces.  Applications such as UPS software may rely on Windows shutdown behavior.
# 
# This setting is only applicable when Windows shutdown is initiated by software programs invoking the Windows programming interfaces ExitWindowsEx() or InitiateSystemShutdown().
# 
# If you enable this policy setting, the computer system safely shuts down and remains in a powered state, ready for power to be safely removed.
# 
# If you disable or do not configure this policy setting, the computer system safely shuts down to a fully powered-off state.
Do not turn off system power after a Windows system shutdown has occurred.:
  lgpo.set:
  - name: Dont_PowerOff_AfterShutdown
  - setting: Enabled
  - policy_class: Machine
