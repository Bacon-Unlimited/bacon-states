# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether Windows will allow console applications and GUI applications without visible top-level windows to block or cancel shutdown. By default, such applications are automatically terminated if they attempt to cancel shutdown or block it indefinitely.
# 
# If you enable this setting, console applications or GUI applications without visible top-level windows that block or cancel shutdown will not be automatically terminated during shutdown.
# 
# If you disable or do not configure this setting, these applications will be automatically terminated during shutdown, helping to ensure that Windows can shut down faster and more smoothly.
Turn off automatic termination of applications that block or cancel shutdown:
  lgpo.set:
  - name: AllowBlockingAppsAtShutdown
  - setting: Enabled
  - policy_class: Machine
