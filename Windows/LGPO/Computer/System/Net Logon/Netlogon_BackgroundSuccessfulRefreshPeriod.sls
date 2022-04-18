# windows:SUPPORTED_WindowsXP
#
# This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that periodically attempt to locate DCs, and it is applied before  returning the DC information to the caller program. The default value for this setting is infinite (4294967200). The maximum value for this setting is (4294967200), while the maximum that is not treated as infinity is 49 days (49*24*60*60=4233600). Any larger value is treated as infinity. The minimum value for this setting is to always refresh (0).
Use positive periodic DC cache refresh for background callers:
  lgpo.set:
  - name: Netlogon_BackgroundSuccessfulRefreshPeriod
  - setting:
      Netlogon_BackgroundSuccessfulRefreshPeriodLabel: decimal-placeholder
  - policy_class: Machine
