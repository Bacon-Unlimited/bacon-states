# windows:SUPPORTED_Windows_10_0
#
# Support for PKInit Freshness Extension requires Windows Server 2016 domain functional level (DFL). If the domain controllers domain is not at Windows Server 2016 DFL or higher this policy will not be applied.
# 
# This policy setting allows you to configure a domain controller (DC) to support the PKInit Freshness Extension.
# 
# If you enable this policy setting, the following options are supported:
# 
# Supported: PKInit Freshness Extension is supported on request. Kerberos clients successfully authenticating with the PKInit Freshness Extension will get the fresh public key identity SID.
# 
# Required: PKInit Freshness Extension is required for successful authentication. Kerberos clients which do not support the PKInit Freshness Extension will always fail when using public key credentials.
# 
# If you disable or not configure this policy setting, then the DC will never offer the PKInit Freshness Extension and  accept valid authentication requests without checking for freshness. Users will never receive the fresh public key identity SID.
# 
KDC support for PKInit Freshness Extension:
  lgpo.set:
  - name: PKINITFreshness
  - setting:
      PKINITFreshness_Levels: enum-placeholder
  - policy_class: Machine
