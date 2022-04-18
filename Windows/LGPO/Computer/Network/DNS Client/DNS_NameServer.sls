# windows:SUPPORTED_WindowsXPOnly
#
# Defines the DNS servers to which a computer sends queries when it attempts to resolve names. This policy setting supersedes the list of DNS servers configured locally and those configured using DHCP. 
# 
# To use this policy setting, click Enabled, and then enter a space-delimited list of IP addresses in the available field. To use this policy setting, you must enter at least one IP address.
# 
# If you enable this policy setting, the list of DNS servers is applied to all network connections used by computers that receive this policy setting. 
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied list of DNS servers, if configured.
DNS servers:
  lgpo.set:
  - name: DNS_NameServer
  - setting:
      DNS_NameServerLabel: text-placeholder
  - policy_class: Machine
