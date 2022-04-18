# windows:SUPPORTED_Windows7
#
# This policy setting is used only when you have deployed one or more BranchCache-enabled file servers at your main office. This policy setting specifies when client computers in branch offices start caching content from file servers based on the network latency - or delay - that occurs when the clients download content from the main office over a Wide Area Network (WAN) link.  When you configure a value for this setting, which is the maximum round trip network latency allowed before caching begins, clients do not cache content until the network latency reaches the specified value; when network latency is greater than the value, clients begin caching content after they receive it from the file servers.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache latency settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to configure a BranchCache latency setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache latency settings on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the latency setting that you use on individual client computers.
# 
# - Enabled. With this selection, the BranchCache maximum round trip latency setting is enabled for all client computers where the policy is applied. For example, if Configure BranchCache for network files is enabled in domain Group Policy, the BranchCache latency setting that you specify in the policy is turned on for all domain member client computers to which the policy is applied.
# 
# - Disabled. With this selection, BranchCache client computers use the default latency setting of 80 milliseconds.
# 
# In circumstances where this policy setting is enabled, you can also select and configure the following option:
# 
# - Type the maximum round trip network latency (milliseconds) after which caching begins. Specifies the amount of time, in milliseconds, after which BranchCache client computers begin to cache content locally.
#             
Configure BranchCache for network files:
  lgpo.set:
  - name: EnableWindowsBranchCache_SMB
  - setting:
      WBC_SMBLatency_DecimalTextBox: decimal-placeholder
  - policy_class: Machine
