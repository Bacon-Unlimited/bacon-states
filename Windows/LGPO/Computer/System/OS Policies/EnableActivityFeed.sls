# windows:SUPPORTED_Windows_10_0
#
# 
#             This policy setting determines whether ActivityFeed is enabled.
#             If you enable this policy setting, all activity types (as applicable) are allowed to be published and ActivityFeed shall roam these activities across device graph of the user.
#             If you disable this policy setting, activities can't be published and ActivityFeed shall disable cloud sync.
#             Policy change takes effect immediately.
#       
Enables Activity Feed:
  lgpo.set:
  - name: EnableActivityFeed
  - setting: Enabled
  - policy_class: Machine
