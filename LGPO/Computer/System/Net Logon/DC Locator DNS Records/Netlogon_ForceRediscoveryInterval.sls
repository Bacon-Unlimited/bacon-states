# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the interval for when a Force Rediscovery is carried out by DC Locator.
# 
# The Domain Controller Locator (DC Locator) service is used by clients to find domain controllers for their Active Directory domain. When DC Locator finds a domain controller, it caches domain controllers to improve the efficiency of the location algorithm. As long as the cached domain controller meets the requirements and is running, DC Locator will continue to return it. If a new domain controller is introduced, existing clients will only discover it when a Force Rediscovery is carried out by DC Locator. To adapt to changes in network conditions DC Locator will by default carry out a Force Rediscovery according to a specific time interval and maintain efficient load-balancing of clients across all available domain controllers in all domains or forests. The default time interval for Force Rediscovery by DC Locator is 12 hours. Force Rediscovery can also be triggered if a call to DC Locator uses the DS_FORCE_REDISCOVERY flag. Rediscovery resets the timer on the cached domain controller entries.
# 
# If you enable this policy setting, DC Locator on the machine will carry out Force Rediscovery periodically according to the configured time interval. The minimum time interval is 3600 seconds (1 hour) to avoid excessive network traffic from rediscovery. The maximum allowed time interval is 4294967200 seconds, while any value greater than 4294967 seconds (~49 days) will be treated as infinity.
# 
# If you disable this policy setting, Force Rediscovery will be used by default for the machine at every 12 hour interval.
# 
# If you do not configure this policy setting, Force Rediscovery will be used by default for the machine at every 12 hour interval, unless the local machine setting in the registry is a different value.
Force Rediscovery Interval:
  lgpo.set:
  - name: Netlogon_ForceRediscoveryInterval
  - setting:
      Netlogon_ForceRediscoveryIntervalLabel: decimal-placeholder
  - policy_class: Machine
