# windows:SUPPORTED_Windows8
#
# This policy setting specifies whether the BranchCache hash generation service supports version 1 (V1) hashes, version 2 (V2) hashes, or both V1 and V2 hashes. Hashes, also called content information, are created based on the data in shared folders where BranchCache is enabled. 
# 
# If you specify only one version that is supported, content information for that version is the only type that is generated by BranchCache, and it is the only type of content information that can be retrieved by client computers. For example, if you enable support for V1 hashes, BranchCache generates only V1 hashes and client computers can retrieve only V1 hashes.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy setting. In this circumstance, which is the default, both V1 and V2 hash generation and retrieval are supported.
# 
# - Enabled. With this selection, the policy setting is applied and the hash version(s) that are specified in "Hash version supported" are generated and retrieved.
# 
# - Disabled. With this selection, both V1 and V2 hash generation and retrieval are supported.
# 
# In circumstances where this setting is enabled, you can also select and configure the following option:
# 
# Hash version supported:
# 
# - To support V1 content information only, configure "Hash version supported" with the value of 1.
# 
# - To support V2 content information only, configure "Hash version supported" with the value of 2.
# 
# - To support both V1 and V2 content information, configure "Hash version supported" with the value of 3.
Hash Version support for BranchCache:
  lgpo.set:
  - name: Pol_HashSupportVersion
  - setting:
      Lbl_HashVersionSupportActionCombo: enum-placeholder
  - policy_class: Machine