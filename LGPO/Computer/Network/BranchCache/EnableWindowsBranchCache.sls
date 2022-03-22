# SUPPORTED_Windows7OrBITS4
#
# This policy setting specifies whether BranchCache is enabled on client computers to which this policy is applied. In addition to this policy setting, you must specify whether the client computers are hosted cache mode or distributed cache mode clients. To do so, configure one of the following the policy settings: 
# 
# - Set BranchCache Distributed Cache mode
# 
# - Set BranchCache Hosted Cache mode
# 
# - Configure Hosted Cache Servers
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.
# 
# - Enabled. With this selection, BranchCache is turned on for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache is turned on for all domain member client computers to which the policy is applied.
# 
# - Disabled. With this selection, BranchCache is turned off for all client computers where the policy is applied.
# 
# * This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
#             
Turn on BranchCache:
  lgpo.set:
  - name: EnableWindowsBranchCache
  - setting: Enabled
  - policy_class: Machine
