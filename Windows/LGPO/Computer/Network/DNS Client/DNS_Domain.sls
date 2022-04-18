# windows:SUPPORTED_WindowsXPOnly
#
# Specifies a connection-specific DNS suffix. This policy setting supersedes local connection-specific DNS suffixes, and those configured using DHCP.
# 
# To use this policy setting, click Enabled, and then enter a string value representing the DNS suffix.
# 
# If you enable this policy setting, the DNS suffix that you enter will be applied to all network connections used by computers that receive this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied connection specific DNS suffix, if configured.
Connection-specific DNS suffix:
  lgpo.set:
  - name: DNS_Domain
  - setting:
      DNS_DomainLabel: text-placeholder
  - policy_class: Machine
