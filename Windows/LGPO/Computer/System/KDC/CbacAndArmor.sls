# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure a domain controller to support claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication.
# 
# If you enable this policy setting, client computers that support claims and compound authentication for Dynamic Access Control and are Kerberos armor-aware will use this feature for Kerberos authentication messages. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain. 
# 
# If you disable or do not configure this policy setting, the domain controller does not support claims, compound authentication or armoring.
# 
# If you configure the "Not supported" option, the domain controller does not support claims, compound authentication or armoring which is the default behavior for domain controllers running Windows Server 2008 R2 or earlier operating systems.
# 
# Note:  For the following options of this KDC policy to be effective, the Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must be enabled on supported systems. If the Kerberos policy setting is not enabled, Kerberos authentication messages will not use these features.  
# 
# If you configure "Supported", the domain controller supports claims, compound authentication and Kerberos armoring. The domain controller advertises to Kerberos client computers that the domain is capable of claims and compound authentication for Dynamic Access Control and Kerberos armoring. 
# 
# Domain functional level requirements
# For the options "Always provide claims" and "Fail unarmored authentication requests", when the domain functional level is set to Windows Server 2008 R2 or earlier then domain controllers behave as if the "Supported" option is selected. 
# 
# When the domain functional level is set to Windows Server 2012 then the domain controller advertises to Kerberos client computers that the domain is capable of claims and compound authentication for Dynamic Access Control and Kerberos armoring, and:
#    - If you set the "Always provide claims" option, always returns claims for accounts and supports the RFC behavior for advertising the flexible authentication secure tunneling (FAST).
#    - If you set the "Fail unarmored authentication requests" option, rejects unarmored Kerberos messages.
# 
# Warning: When "Fail unarmored authentication requests" is set, then client computers which do not support Kerberos armoring will fail to authenticate to the domain controller.
# 
# To ensure this feature is effective, deploy enough domain controllers that support claims and compound authentication for Dynamic Access Control and are Kerberos armor-aware to handle the authentication requests. Insufficient number of domain controllers that support this policy result in authentication failures whenever Dynamic Access Control or Kerberos armoring is required (that is, the "Supported" option is enabled).
# 
# Impact on domain controller performance when this policy setting is enabled:
#    - Secure Kerberos domain capability discovery is required resulting in additional message exchanges.
#    - Claims and compound authentication for Dynamic Access Control increases the size and complexity of the data in the message which results in more processing time and greater Kerberos service ticket size.
#    - Kerberos armoring fully encrypts Kerberos messages and signs Kerberos errors which results in increased processing time, but does not change the service ticket size.
# 
KDC support for claims, compound authentication and Kerberos armoring:
  lgpo.set:
  - name: CbacAndArmor
  - setting:
      CbacAndArmor_Levels: enum-placeholder
  - policy_class: Machine
