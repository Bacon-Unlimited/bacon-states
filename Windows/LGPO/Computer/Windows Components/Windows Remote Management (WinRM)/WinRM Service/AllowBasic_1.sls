# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Basic authentication from a remote client.
# 
#         If you enable this policy setting, the WinRM service accepts Basic authentication from a remote client.
# 
#         If you disable or do not configure this policy setting, the WinRM service does not accept Basic authentication from a remote client.
Allow Basic authentication:
  lgpo.set:
  - name: AllowBasic_1
  - setting: Enabled
  - policy_class: Machine
