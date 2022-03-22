# windows:SUPPORTED_Windows8
#
# This policy setting configures whether the computers to which this setting is applied are more aggressive when trying to locate a domain controller (DC).
# 
# When an environment has a large number of DCs running both old and new operating systems, the default DC locator discovery behavior may be insufficient to find DCs running a newer operating system.  This policy setting can be enabled to configure DC locator to be more aggressive about trying to locate a DC in such an environment, by pinging DCs at a higher frequency.  Enabling this setting may result in additional network traffic and increased load on DCs.  You should disable this setting once all DCs are running the same OS version.
# 
# The allowable values for this setting result in the following behaviors:
# 
# 1 - Computers will ping DCs at the normal frequency.
# 2 - Computers will ping DCs at the higher frequency.
# 
# To specify this behavior, click Enabled and then enter a value. The range of values is from 1 to 2.
# 
# If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.
Use urgent mode when pinging domain controllers:
  lgpo.set:
  - name: Netlogon_PingUrgencyMode
  - setting:
      Netlogon_PingUrgencyModeLabel: decimal-placeholder
  - policy_class: Machine
