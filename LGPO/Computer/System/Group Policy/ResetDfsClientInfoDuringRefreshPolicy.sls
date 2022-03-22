# windows:SUPPORTED_Windows8
#
# Enabling this setting will cause the Group Policy Client to connect to the same domain controller for DFS shares as is being used for Active Directory.
# 
# 
Enable AD/DFS domain controller synchronization during policy refresh:
  lgpo.set:
  - name: ResetDfsClientInfoDuringRefreshPolicy
  - setting: Enabled
  - policy_class: Machine
