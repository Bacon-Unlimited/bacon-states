# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Negotiate authentication.
# 
# If you enable this policy setting, the WinRM client does not use Negotiate authentication.
# 
# If you disable or do not configure this policy setting, the WinRM client uses Negotiate authentication.
Disallow Negotiate authentication:
  lgpo.set:
  - name: DisallowNegotiate_2
  - setting: Enabled
  - policy_class: Machine
