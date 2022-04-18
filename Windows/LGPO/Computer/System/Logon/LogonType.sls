# windows:SUPPORTED_WindowsServer_And_XPproTo7
#
# This policy is not available in this version of Windows.
Always use classic logon:
  lgpo.set:
  - name: LogonType
  - setting: Enabled
  - policy_class: Machine
