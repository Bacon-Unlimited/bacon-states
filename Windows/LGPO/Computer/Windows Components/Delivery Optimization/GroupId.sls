# windows:SUPPORTED_Windows_10_0
#
# Group ID must be set as a GUID. This Policy specifies an arbitrary group ID that the device belongs to.
# 
# Use this if you need to create a single group for Local Network Peering for branches that are on different domains or are not on the same LAN.
# 
# Note: this is a best effort optimization and should not be relied on for an authentication of identity.
Group ID:
  lgpo.set:
  - name: GroupId
  - setting:
      GroupId: text-placeholder
  - policy_class: Machine
