# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether search and Cortana can provide location aware search and Cortana results.
# 
# If this is enabled, search and Cortana can access location information.
Allow search and Cortana to use location:
  lgpo.set:
  - name: AllowSearchToUseLocation
  - setting: Enabled
  - policy_class: Machine
