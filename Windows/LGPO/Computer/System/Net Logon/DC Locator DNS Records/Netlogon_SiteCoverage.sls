# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the sites for which the domain controllers (DC) register the site-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it. 
# 
# The DC Locator DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.
# 
# To specify the sites covered by the DC Locator DNS SRV records, click Enabled, and then enter the sites names in a space-delimited format.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify sites covered by the DC Locator DNS SRV records:
  lgpo.set:
  - name: Netlogon_SiteCoverage
  - setting:
      Netlogon_SiteCoverageLabel: text-placeholder
  - policy_class: Machine
