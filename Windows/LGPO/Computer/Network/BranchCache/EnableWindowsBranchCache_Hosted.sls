# SUPPORTED_Windows7OrBITS4
#
# This policy setting specifies whether BranchCache hosted cache mode is enabled on client computers to which this policy is applied. In addition to this policy, you must use the policy "Turn on BranchCache" to enable BranchCache on client computers.
# 
# When a client computer is configured as a hosted cache mode client, it is able to download cached content from a hosted cache server that is located at the branch office. In addition, when the hosted cache client obtains content from a content server, the client can upload the content to the hosted cache server for access by other hosted cache clients at the branch office.
# 
# Policy configuration
# 
# Select one of the following:
# 
# - Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.
# 
# - Enabled. With this selection, BranchCache hosted cache mode is enabled for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache hosted cache mode is turned on for all domain member client computers to which the policy is applied.
# 
# - Disabled. With this selection, BranchCache hosted cache mode is turned off for all client computers where the policy is applied.
# 
# In circumstances where this setting is enabled, you can also select and configure the following option:
# 
# - Type the name of the hosted cache server. Specifies the computer name of the hosted cache server. Because the hosted cache server name is also specified in the certificate enrolled to the hosted cache server, the name that you enter here must match the name of the hosted cache server that is specified in the server certificate. 
# 
# Hosted cache clients must trust the server certificate that is issued to the hosted cache server. Ensure that the issuing CA certificate is installed in the Trusted Root Certification Authorities certificate store on all hosted cache client computers.
# 
# * This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
#             
Set BranchCache Hosted Cache mode:
  lgpo.set:
  - name: EnableWindowsBranchCache_Hosted
  - setting:
      WBC_Cache_TextBox: text-placeholder
  - policy_class: Machine
