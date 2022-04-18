# windows:SUPPORTED_WindowsVistaTo7
#
# This policy is not available in this version of Windows.
Turn off Windows Startup sound:
  lgpo.set:
  - name: DisableStartupSound
  - setting: Enabled
  - policy_class: Machine
