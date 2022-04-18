# windows:SUPPORTED_Windows7
#
# This policy setting determines whether to require domain users to elevate when setting a network's location.
# 
# If you enable this policy setting, domain users must elevate when setting a network's location.
# 
# If you disable or do not configure this policy setting, domain users can set a network's location without elevating.
Require domain users to elevate when setting a network's location:
  lgpo.set:
  - name: NC_StdDomainUserSetLocation
  - setting: Enabled
  - policy_class: Machine
