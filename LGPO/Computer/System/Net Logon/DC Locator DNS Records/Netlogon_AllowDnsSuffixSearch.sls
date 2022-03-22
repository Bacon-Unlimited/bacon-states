# windows:SUPPORTED_Windows_6_3_NOARM
#
# This policy setting specifies whether the computers to which this setting is applied attemps DNS name resolution of single-lablel domain names, by appending different registered DNS suffixes, and uses NetBIOS name resolution only if DNS name resolution fails. This policy, including the specified default behavior, is not used if the AllowSingleLabelDnsDomain policy setting is enabled.
# 
# By default, when no setting is specified for this policy, the behavior is the same as explicitly enabling this policy, unless the AllowSingleLabelDnsDomain policy setting is enabled.
# 
# If you enable this policy setting, when the AllowSingleLabelDnsDomain policy is not enabled, computers to which this policy is applied, will locate a domain controller hosting an Active Directory domain specified with a single-label name, by appending different registered DNS suffixes to perform DNS name resolution. The single-label name is not used without appending DNS suffixes unless the computer is joined to a domain that has a single-label DNS name in the Active Directory forest. NetBIOS name resolution is performed on the single-label name only, in the event that DNS resolution fails.
# 
# If you disable this policy setting, when the AllowSingleLabelDnsDomain policy is not enabled, computers to which this policy is applied, will only use NetBIOS name resolution to attempt to locate a domain controller hosting an Active Directory domain specified with a single-label name. The computers will not attempt DNS name resolution in this case, unless the computer is searching for a domain with a single label DNS name to which this computer is joined, in the Active Directory forest.
# 
? Use DNS name resolution when a single-label domain name is used, by appending different
  registered DNS suffixes, if the AllowSingleLabelDnsDomain setting is not enabled.
: lgpo.set:
  - name: Netlogon_AllowDnsSuffixSearch
  - setting: Enabled
  - policy_class: Machine
