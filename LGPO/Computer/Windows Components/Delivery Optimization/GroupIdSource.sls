# windows:SUPPORTED_Windows_10_0
#
# Set this policy to restrict peer selection to a specific source.
# 
# Options available are:
# 
# 1 = AD Site.
# 
# 2 = Authenticated domain SID.
# 
# 3 = DHCP Option ID.
# 
# 4 = DNS Suffix.
# 
# 5 = AAD Tenant ID.
# 
# When set, the Group ID will be assigned automatically from the selected source. If you set this policy, the GroupID policy will be ignored.
# 
# The options set in this policy only apply to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored.
# 
# For option 3 - DHCP Option ID, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID.
Select the source of Group IDs:
  lgpo.set:
  - name: GroupIdSource
  - setting:
      GroupIdSource: enum-placeholder
  - policy_class: Machine
