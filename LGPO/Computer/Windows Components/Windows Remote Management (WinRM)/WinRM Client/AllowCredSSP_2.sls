# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses CredSSP authentication.
# 
# If you enable this policy setting, the WinRM client uses CredSSP authentication.
# 
# If you disable or do not configure this policy setting, the WinRM client does not use CredSSP authentication.
Allow CredSSP authentication:
  lgpo.set:
  - name: AllowCredSSP_2
  - setting: Enabled
  - policy_class: Machine
