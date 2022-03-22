# windows:SUPPORTED_WindowsXP
#
# This policy setting determines which DC Locator DNS records are not registered by the Net Logon service.
# 
# If you enable this policy setting, select Enabled and specify a list of space-delimited mnemonics (instructions) for the DC Locator DNS records that will not be registered by the DCs to which this setting is applied.
# 
# Select the mnemonics from the following list:
# 
# Mnemonic         Type  DNS Record
# 
# LdapIpAddress    A     <DnsDomainName>
# Ldap             SRV   _ldap._tcp.<DnsDomainName>
# LdapAtSite       SRV   _ldap._tcp.<SiteName>._sites.<DnsDomainName>
# Pdc              SRV   _ldap._tcp.pdc._msdcs.<DnsDomainName>
# Gc               SRV   _ldap._tcp.gc._msdcs.<DnsForestName>
# GcAtSite         SRV   _ldap._tcp.<SiteName>._sites.gc._msdcs.<DnsForestName>
# DcByGuid         SRV   _ldap._tcp.<DomainGuid>.domains._msdcs.<DnsForestName>
# GcIpAddress      A     gc._msdcs.<DnsForestName>
# DsaCname         CNAME <DsaGuid>._msdcs.<DnsForestName>
# Kdc              SRV   _kerberos._tcp.dc._msdcs.<DnsDomainName>
# KdcAtSite        SRV   _kerberos._tcp.<SiteName>._sites.dc._msdcs.<DnsDomainName>
# Dc               SRV   _ldap._tcp.dc._msdcs.<DnsDomainName>
# DcAtSite         SRV   _ldap._tcp.<SiteName>._sites.dc._msdcs.<DnsDomainName>
# Rfc1510Kdc       SRV   _kerberos._tcp.<DnsDomainName>
# Rfc1510KdcAtSite SRV   _kerberos._tcp.<SiteName>._sites.<DnsDomainName>
# GenericGc        SRV   _gc._tcp.<DnsForestName>
# GenericGcAtSite  SRV   _gc._tcp.<SiteName>._sites.<DnsForestName>
# Rfc1510UdpKdc    SRV   _kerberos._udp.<DnsDomainName>
# Rfc1510Kpwd      SRV   _kpasswd._tcp.<DnsDomainName>
# Rfc1510UdpKpwd   SRV   _kpasswd._udp.<DnsDomainName>
# 
# If you disable this policy setting, DCs configured to perform dynamic registration of DC Locator DNS records register all DC Locator DNS resource records.
# 
# If you do not configure this policy setting, DCs use their local configuration.
Specify DC Locator DNS records not registered by the DCs:
  lgpo.set:
  - name: Netlogon_DnsAvoidRegisterRecords
  - setting:
      Netlogon_DnsAvoidRegisterRecordsLabel: text-placeholder
  - policy_class: Machine
