# windows:SUPPORTED_WindowsVista
#
# This policy setting configures access to remote shells.
# 
# If you enable or do not configure this policy setting, new remote shell connections are accepted by the server.
# 
# If you set this policy to disabled, new remote shell connections are rejected by the server.
Allow Remote Shell Access:
  lgpo.set:
  - name: AllowRemoteShellAccess
  - setting: Enabled
  - policy_class: Machine
