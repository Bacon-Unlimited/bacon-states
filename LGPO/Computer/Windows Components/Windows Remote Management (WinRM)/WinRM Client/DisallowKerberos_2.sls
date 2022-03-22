# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Kerberos authentication directly.
# 
# If you enable this policy setting, the Windows Remote Management (WinRM) client does not use Kerberos authentication directly. Kerberos can still be used if the WinRM client is using the Negotiate authentication and Kerberos is selected.
# 
# If you disable or do not configure this policy setting, the WinRM client uses the Kerberos authentication directly.
Disallow Kerberos authentication:
  lgpo.set:
  - name: DisallowKerberos_2
  - setting: Enabled
  - policy_class: Machine
