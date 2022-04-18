# windows:SUPPORTED_Windows_10_0
#
# 
#         This policy setting determines the behavior of Offline Files on clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.
# 
#         If you enable this policy setting, the "Always Available offline" option will appear in the File Explorer menu on a Windows computer when connecting to a CA-enabled share. Pinning of files on CA-enabled shares using client-side caching will also be possible.
# 
#         If you disable or do not configure this policy setting, Windows will prevent use of Offline Files with CA-enabled shares.
# 
#         Note: Microsoft does not recommend enabling this group policy. Use of CA with Offline Files will lead to very long transition times between the online and offline states.
#       
Offline Files Availability on Continuous Availability Shares:
  lgpo.set:
  - name: Pol_EnableOfflineFilesforCAShares
  - setting: Enabled
  - policy_class: Machine
