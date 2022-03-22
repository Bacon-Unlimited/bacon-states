# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the Active Directory site to which computers belong.
# 
# An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.
# 
# To specify the site name for this setting, click Enabled, and then enter the site name. When the site to which a computer belongs is not specified, the computer automatically discovers its site from Active Directory.
# 
# If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.
Specify site name:
  lgpo.set:
  - name: Netlogon_SiteName
  - setting:
      Netlogon_SiteNameLabel: text-placeholder
  - policy_class: Machine
