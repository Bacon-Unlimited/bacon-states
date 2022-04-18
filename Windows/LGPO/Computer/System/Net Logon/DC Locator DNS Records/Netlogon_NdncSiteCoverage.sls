# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the sites for which the domain controllers (DC) that host the application directory partition should register the site-specific, application directory partition-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it. 
# 
# The application directory partition DC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they are used to locate the application directory partition-specific DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.
# 
# To specify the sites covered by the DC Locator application directory partition-specific DNS SRV records, click Enabled, and then enter the site names in a space-delimited format.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify sites covered by the application directory partition DC Locator DNS SRV records:
  lgpo.set:
  - name: Netlogon_NdncSiteCoverage
  - setting:
      Netlogon_NdncSiteCoverageLabel: text-placeholder
  - policy_class: Machine
