# windows:SUPPORTED_Windows8
#
# This policy setting configures how a domain controller (DC) behaves when responding to a client whose IP address does not map to any configured site.
# 
# Domain controllers use the client IP address during a DC locator ping request to compute which Active Directory site the client belongs to.   If no site mapping can be computed, the DC may do an address lookup on the client network name to discover other IP addresses which may then be used to compute a matching site for the client. 
# 
# The allowable values for this setting result in the following behaviors:
# 
# 0 - DCs will never perform address lookups.
# 1 - DCs will perform an exhaustive address lookup to discover additional client IP addresses.
# 2 - DCs will perform a fast, DNS-only address lookup to discover additional client IP addresses.
# 
# To specify this behavior in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 2.
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify address lookup behavior for DC locator ping:
  lgpo.set:
  - name: Netlogon_AddressLookupOnPingBehavior
  - setting:
      Netlogon_AddressLookupOnPingBehaviorLabel: decimal-placeholder
  - policy_class: Machine
