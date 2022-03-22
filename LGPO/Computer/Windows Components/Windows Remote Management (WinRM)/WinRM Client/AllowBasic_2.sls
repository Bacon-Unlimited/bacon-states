# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Basic authentication.
# 
# If you enable this policy setting, the WinRM client uses Basic authentication. If WinRM is configured to use HTTP transport, the user name and password are sent over the network as clear text.
# 
# If you disable or do not configure this policy setting, the WinRM client does not use Basic authentication.
Allow Basic authentication:
  lgpo.set:
  - name: AllowBasic_2
  - setting: Enabled
  - policy_class: Machine
