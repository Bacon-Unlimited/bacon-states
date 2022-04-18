# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Kerberos credentials over the network.
# 
#         If you enable this policy setting, the WinRM service does not accept Kerberos credentials over the network.
# 
#         If you disable or do not configure this policy setting, the WinRM service accepts Kerberos authentication from a remote client.
Disallow Kerberos authentication:
  lgpo.set:
  - name: DisallowKerberos_1
  - setting: Enabled
  - policy_class: Machine
