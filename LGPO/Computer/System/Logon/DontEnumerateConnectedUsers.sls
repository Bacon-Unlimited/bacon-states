# windows:SUPPORTED_Windows8
#
# This policy setting prevents connected users from being enumerated on domain-joined computers. 
# 
# If you enable this policy setting, the Logon UI will not enumerate any connected users on domain-joined computers.
# 
# If you disable or do not configure this policy setting, connected users will be enumerated on domain-joined computers.
Do not enumerate connected users on domain-joined computers:
  lgpo.set:
  - name: DontEnumerateConnectedUsers
  - setting: Enabled
  - policy_class: Machine
