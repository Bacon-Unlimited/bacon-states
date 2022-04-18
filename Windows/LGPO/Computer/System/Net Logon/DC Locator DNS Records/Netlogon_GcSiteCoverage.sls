# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the sites for which the global catalogs (GC) should register site-specific GC locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the GC resides, and records registered by a GC configured to register GC Locator DNS SRV records for those sites without a GC that are closest to it. 
# 
# The GC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they are used to locate the GC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication. A GC is a domain controller that contains a partial replica of every domain in Active Directory.
# 
# To specify the sites covered by the GC Locator DNS SRV records, click Enabled, and enter the sites' names in a space-delimited format.
# 
# If you do not configure this policy setting, it is not applied to any GCs, and GCs use their local configuration.
Specify sites covered by the GC Locator DNS SRV Records:
  lgpo.set:
  - name: Netlogon_GcSiteCoverage
  - setting:
      Netlogon_GcSiteCoverageLabel: text-placeholder
  - policy_class: Machine
