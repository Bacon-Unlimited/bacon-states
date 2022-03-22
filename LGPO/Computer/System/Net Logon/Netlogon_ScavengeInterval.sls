# windows:SUPPORTED_WindowsXP
#
# This policy setting determines the interval at which Netlogon performs the following scavenging operations:
# 
# - Checks if a password on a secure channel needs to be modified, and modifies it if necessary.
# 
# - On the domain controllers (DC), discovers a DC that has not been discovered.
# 
# - On the PDC, attempts to add the <DomainName>[1B] NetBIOS name if it hasn’t already been successfully added.
# 
# None of these operations are critical. 15 minutes is optimal in all but extreme cases. For instance, if a DC is separated from a trusted domain by an expensive (e.g., ISDN) line, this parameter might be adjusted upward to avoid frequent automatic discovery of DCs in a trusted domain.
# 
# To enable the setting, click Enabled, and then specify the interval in seconds.
Set scavenge interval:
  lgpo.set:
  - name: Netlogon_ScavengeInterval
  - setting:
      Netlogon_ScavengeIntervalLabel: decimal-placeholder
  - policy_class: Machine
