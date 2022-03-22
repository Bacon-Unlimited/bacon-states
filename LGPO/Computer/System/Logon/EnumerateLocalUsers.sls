# windows:SUPPORTED_Windows8
#
# This policy setting allows local users to be enumerated on domain-joined computers.  
# 
# If you enable this policy setting, Logon UI will enumerate all local users on domain-joined computers.
# 
# If you disable or do not configure this policy setting, the Logon UI will not enumerate local users on domain-joined computers.
Enumerate local users on domain-joined computers:
  lgpo.set:
  - name: EnumerateLocalUsers
  - setting: Enabled
  - policy_class: Machine
