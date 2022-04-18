# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage whether the Windows Remote Management (WinRM) client sends and receives unencrypted messages over the network.
# 
# If you enable this policy setting, the WinRM client sends and receives unencrypted messages over the network.
# 
# If you disable or do not configure this policy setting, the WinRM client sends or receives only encrypted messages over the network.
Allow unencrypted traffic:
  lgpo.set:
  - name: AllowUnencrypted_2
  - setting: Enabled
  - policy_class: Machine
