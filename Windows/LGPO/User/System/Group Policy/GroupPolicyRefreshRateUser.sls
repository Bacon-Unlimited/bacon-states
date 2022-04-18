# windows:SUPPORTED_Win2k
#
# This policy setting specifies how often Group Policy for users is updated while the computer is in use (in the background). This setting specifies a background update rate only for the Group Policies in the User Configuration folder.
# 
# In addition to background updates, Group Policy for users is always updated when users log on.
# 
# By default, user Group Policy is updated in the background every 90 minutes, with a random offset of 0 to 30 minutes.
# 
# If you enable this setting, you can specify an update rate from 0 to 64,800 minutes (45 days). If you select 0 minutes, the computer tries to update user Group Policy every 7 seconds. However, because updates might interfere with users' work and increase network traffic, very short update intervals are not appropriate for most installations.
# 
# If you disable this setting, user Group Policy is updated every 90 minutes (the default). To specify that Group Policy for users should never be updated while the computer is in use, select the "Turn off background refresh of Group Policy" setting.
# 
# This setting also lets you specify how much the actual update interval varies. To prevent clients with the same update interval from requesting updates simultaneously, the system varies the update interval for each client by a random number of minutes. The number you type in the random time box sets the upper limit for the range of variance. For example, if you type 30 minutes, the system selects a variance of 0 to 30 minutes. Typing a large number establishes a broad range and makes it less likely that client requests overlap. However, updates might be delayed significantly.
# 
# Important: If the "Turn off background refresh of Group Policy" setting is enabled, this setting is ignored.
# 
# Note: This setting establishes the update rate for user Group Policies. To set an update rate for computer Group Policies, use the "Group Policy refresh interval for computers" setting (located in Computer Configuration\Administrative Templates\System\Group Policy).
# 
# Tip: Consider notifying users that their policy is updated periodically so that they recognize the signs of a policy update. When Group Policy is updated, the Windows desktop is refreshed; it flickers briefly and closes open menus. Also, restrictions imposed by Group Policies, such as those that limit the programs a user can run, might interfere with tasks in progress.
Set Group Policy refresh interval for users:
  lgpo.set:
  - name: GroupPolicyRefreshRateUser
  - setting:
      GPRefreshRate3: decimal-placeholder
      GPRefreshRateOffset3: decimal-placeholder
  - policy_class: User
