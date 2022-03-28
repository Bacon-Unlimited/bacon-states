# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the Priority field in the SRV resource records registered by domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service and are used to locate the DC.
# 
# The Priority field in the SRV record sets the preference for target hosts (specified in the SRV records Target field). DNS clients that query for SRV resource records attempt to contact the first reachable host with the lowest priority number listed.
# 
# To specify the Priority in the DC Locator DNS SRV resource records, click Enabled, and then enter a value. The range of values is from 0 to 65535.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Set Priority in the DC Locator DNS SRV records:
  lgpo.set:
  - name: Netlogon_LdapSrvPriority
  - setting:
      Netlogon_LdapSrvPriorityLabel: decimal-placeholder
  - policy_class: Machine
