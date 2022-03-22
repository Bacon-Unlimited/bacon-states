# windows:SUPPORTED_Win2k
#
# This policy setting specifies how often Group Policy is updated on domain controllers while they are running (in the background). The updates specified by this setting occur in addition to updates performed when the system starts.
# 
# By default, Group Policy on the domain controllers is updated every five minutes.
# 
# If you enable this setting, you can specify an update rate from 0 to 64,800 minutes (45 days). If you select 0 minutes, the domain controller tries to update Group Policy every 7 seconds. However, because updates might interfere with users' work and increase network traffic, very short update intervals are not appropriate for most installations.
# 
# If you disable or do not configure this setting, the domain controller updates Group Policy every 5 minutes (the default). To specify that Group Policies for users should never be updated while the computer is in use, select the "Turn off background refresh of Group Policy" setting.
# 
# This setting also lets you specify how much the actual update interval varies. To prevent domain controllers with the same update interval from requesting updates simultaneously, the system varies the update interval for each controller by a random number of minutes. The number you type in the random time box sets the upper limit for the range of variance. For example, if you type 30 minutes, the system selects a variance of 0 to 30 minutes. Typing a large number establishes a broad range and makes it less likely that update requests overlap. However, updates might be delayed significantly.
# 
# Note: This setting is used only when you are establishing policy for a domain, site, organizational unit (OU), or customized group. If you are establishing policy for a local computer only, the system ignores this setting.
Set Group Policy refresh interval for domain controllers:
  lgpo.set:
  - name: GroupPolicyRefreshRateDC
  - setting:
      GPRefreshRate2: decimal-placeholder
      GPRefreshRateOffset2: decimal-placeholder
  - policy_class: Machine
