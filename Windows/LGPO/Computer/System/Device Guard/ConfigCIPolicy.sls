# windows:SUPPORTED_Windows_10_0
#
# Deploy Windows Defender Application Control
# 
# This policy setting lets you deploy a Code Integrity Policy to a machine to control what is allowed to run on that machine.
# 
# If you deploy a Code Integrity Policy, Windows will restrict what can run in both kernel mode and on the Windows Desktop based on the policy. To enable this policy the machine must be rebooted. 
# 
# The file path must be either a UNC path (for example, \\ServerName\ShareName\SIPolicy.p7b), or a locally valid path (for example, C:\FolderName\SIPolicy.p7b).  The local machine account (LOCAL SYSTEM) must have access permission to the policy file.
#  
# If using a signed and protected policy then disabling this policy setting doesn't remove the feature from the computer. Instead, you must either:
# 
#    1) first update the policy to a non-protected policy and then disable the setting, or
#    2) disable the setting and then remove the policy from each computer, with a physically present user.
#       
Deploy Windows Defender Application Control:
  lgpo.set:
  - name: ConfigCIPolicy
  - setting:
      ConfigCIPolicyFilePathText: text-placeholder
  - policy_class: Machine
