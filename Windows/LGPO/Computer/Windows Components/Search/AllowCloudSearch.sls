# windows:SUPPORTED_Windows_10_0
#
# Allow search and Cortana to search cloud sources like OneDrive and SharePoint
Allow Cloud Search:
  lgpo.set:
  - name: AllowCloudSearch
  - setting:
      AllowCloudSearch_Dropdown: enum-placeholder
  - policy_class: Machine
