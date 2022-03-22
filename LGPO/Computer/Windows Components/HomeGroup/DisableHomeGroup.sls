# windows:SUPPORTED_Windows7
#
# This policy setting specifies whether users can add computers to a homegroup. By default, users can add their computer to a homegroup on a private network.
# 
# If you enable this policy setting, users cannot add computers to a homegroup. This policy setting does not affect other network sharing features.
# 
# If you disable or do not configure this policy setting, users can add computers to a homegroup. However, data on a domain-joined computer is not shared with the homegroup.
# 
# This policy setting is not configured by default.
# 
# You must restart the computer for this policy setting to take effect.
Prevent the computer from joining a homegroup:
  lgpo.set:
  - name: DisableHomeGroup
  - setting: Enabled
  - policy_class: Machine
