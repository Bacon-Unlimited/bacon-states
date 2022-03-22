# windows:SUPPORTED_WindowsXP
#
# This policy setting determines the amount of time (in seconds) to wait before the first retry for applications that perform periodic searches for domain controllers (DC) that are unable to find a DC.
# 
# The default value for this setting is 10 minutes (10*60). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.
# 
# This setting is relevant only to those callers of DsGetDcName that have specified the DS_BACKGROUND_ONLY flag.
# 
# If the value of this setting is less than the value specified in the NegativeCachePeriod subkey, the value in the NegativeCachePeriod subkey is used.
# 
# Warning: If the value for this setting is too large, a client will not attempt to find any DCs that were initially unavailable. If the value set in this setting is very small and the DC is not available, the traffic caused by periodic DC discoveries may be excessive.
Use initial DC discovery retry setting for background callers:
  lgpo.set:
  - name: Netlogon_BackgroundRetryInitialPeriod
  - setting:
      Netlogon_BackgroundRetryInitialPeriodLabel: decimal-placeholder
  - policy_class: Machine
