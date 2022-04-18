# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts CredSSP authentication from a remote client.
# 
#         If you enable this policy setting, the WinRM service accepts CredSSP authentication from a remote client.
# 
#         If you disable or do not configure this policy setting, the WinRM service does not accept CredSSP authentication from a remote client.
#       
Allow CredSSP authentication:
  lgpo.set:
  - name: AllowCredSSP_1
  - setting: Enabled
  - policy_class: Machine
