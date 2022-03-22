# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the legacy remote shutdown interface (named pipe). The named pipe remote shutdown interface is needed in order to shutdown this system from a remote Windows XP or Windows Server 2003 system.
# 
# If you enable this policy setting, the system does not create the named pipe remote shutdown interface.
# 
# If you disable or do not configure this policy setting, the system creates the named pipe remote shutdown interface.
Turn off legacy remote shutdown interface:
  lgpo.set:
  - name: DisableNamedPipeShutdownPolicyDescription
  - setting: Enabled
  - policy_class: Machine
