# SUPPORTED_Windows7OrBITS4
#
# This policy setting specifies the default percentage of total disk space that is allocated for the BranchCache disk cache on client computers.
# 
# If you enable this policy setting, you can configure the percentage of total disk space to allocate for the cache.
# 
# If you disable or do not configure this policy setting, the cache is set to 5 percent of the total disk space on the client computer.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache client computer cache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to configure a BranchCache client computer cache setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache client computer cache settings on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the client computer cache setting that you use on individual client computers.
# 
# - Enabled. With this selection, the BranchCache client computer cache setting is enabled for all client computers where the policy is applied. For example, if Set percentage of disk space used for client computer cache is enabled in domain Group Policy, the BranchCache client computer cache setting that you specify in the policy is turned on for all domain member client computers to which the policy is applied.
# 
# - Disabled. With this selection, BranchCache client computers use the default client computer cache setting of five percent of the total disk space on the client computer.
# 
# In circumstances where this setting is enabled, you can also select and configure the following option:
# 
# - Specify the percentage of total disk space allocated for the cache. Specifies an integer that is the percentage of total client computer disk space to use for the BranchCache client computer cache.
# 
# * This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
#             
Set percentage of disk space used for client computer cache:
  lgpo.set:
  - name: SetCachePercent
  - setting:
      WBC_Cache_Size_Percent_dctxtbox: decimal-placeholder
  - policy_class: Machine
