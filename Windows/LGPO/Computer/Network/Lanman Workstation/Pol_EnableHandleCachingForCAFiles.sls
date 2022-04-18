# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting determines the behavior of SMB handle caching for clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.
# 
#         If you enable this policy setting, the SMB client will allow cached handles to files on CA shares. This may lead to better performance when repeatedly accessing a large number of unstructured data files on CA shares running in Microsoft Azure Files.
# 
#         If you disable or do not configure this policy setting, Windows will prevent use of cached handles to files opened through CA shares.
# 
#         Note: This policy has no effect when connecting Scale-out File Server shares provided by a Windows Server. Microsoft does not recommend enabling this policy for clients that routinely connect to files hosted on a Windows Failover Cluster with the File Server for General Use role, as it can lead to adverse failover times and increased memory and CPU usage.
#       
Handle Caching on Continuous Availability Shares:
  lgpo.set:
  - name: Pol_EnableHandleCachingForCAFiles
  - setting: Enabled
  - policy_class: Machine
