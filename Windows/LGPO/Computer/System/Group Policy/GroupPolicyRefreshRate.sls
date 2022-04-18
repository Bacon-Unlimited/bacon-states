# windows:SUPPORTED_Win2k
#
# This policy setting specifies how often Group Policy for computers is updated while the computer is in use (in the background). This setting specifies a background update rate only for Group Policies in the Computer Configuration folder.
# 
# In addition to background updates, Group Policy for the computer is always updated when the system starts.
# 
# By default, computer Group Policy is updated in the background every 90 minutes, with a random offset of 0 to 30 minutes.
# 
# If you enable this setting, you can specify an update rate from 0 to 64,800 minutes (45 days). If you select 0 minutes, the computer tries to update Group Policy every 7 seconds. However, because updates might interfere with users' work and increase network traffic, very short update intervals are not appropriate for most installations.
# 
# If you disable this setting, Group Policy is updated every 90 minutes (the default). To specify that Group Policy should never be updated while the computer is in use, select the "Turn off background refresh of Group Policy" policy.
# 
# The Set Group Policy refresh interval for computers policy also lets you specify how much the actual update interval varies. To prevent clients with the same update interval from requesting updates simultaneously, the system varies the update interval for each client by a random number of minutes. The number you type in the random time box sets the upper limit for the range of variance. For example, if you type 30 minutes, the system selects a variance of 0 to 30 minutes. Typing a large number establishes a broad range and makes it less likely that client requests overlap. However, updates might be delayed significantly.
# 
# This setting establishes the update rate for computer Group Policy. To set an update rate for user policies, use the "Set Group Policy refresh interval for users" setting (located in User Configuration\Administrative Templates\System\Group Policy).
# 
# This setting is only used when the "Turn off background refresh of Group Policy" setting is not enabled.
# 
# Note: Consider notifying users that their policy is updated periodically so that they recognize the signs of a policy update. When Group Policy is updated, the Windows desktop is refreshed; it flickers briefly and closes open menus. Also, restrictions imposed by Group Policies, such as those that limit the programs users can run, might interfere with tasks in progress.
Set Group Policy refresh interval for computers:
  lgpo.set:
  - name: GroupPolicyRefreshRate
  - setting:
      GPRefreshRate1: decimal-placeholder
      GPRefreshRateOffset1: decimal-placeholder
  - policy_class: Machine
