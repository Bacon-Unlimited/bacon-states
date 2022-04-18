# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the amount of time (in seconds) the DC locator remembers that a domain controller (DC) could not be found in a domain. When a subsequent attempt to locate the DC occurs within the time set in this setting, DC Discovery immediately fails, without attempting to find the DC.
# 
# The default value for this setting is 45 seconds. The maximum value for this setting is 7 days (7*24*60*60). The minimum value for this setting is 0.
# 
# Warning: If the value for this setting is too large, a client will not attempt to find any DCs that were initially unavailable. If the value for this setting is too small, clients will attempt to find DCs even when none are available.
Specify negative DC Discovery cache setting:
  lgpo.set:
  - name: Netlogon_NegativeCachePeriod
  - setting:
      Netlogon_NegativeCachePeriodLabel: decimal-placeholder
  - policy_class: Machine
