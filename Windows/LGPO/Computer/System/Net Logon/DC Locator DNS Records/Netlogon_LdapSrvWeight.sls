# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the Weight field in the SRV resource records registered by the domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC.
# 
# The Weight field in the SRV record can be used in addition to the Priority value to provide a load-balancing mechanism where multiple servers are specified in the SRV records Target field and are all set to the same priority. The probability with which the DNS client randomly selects the target host to be contacted is proportional to the Weight field value in the SRV record.
# 
# To specify the Weight in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 65535.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Set Weight in the DC Locator DNS SRV records:
  lgpo.set:
  - name: Netlogon_LdapSrvWeight
  - setting:
      Netlogon_LdapSrvWeightLabel: decimal-placeholder
  - policy_class: Machine
