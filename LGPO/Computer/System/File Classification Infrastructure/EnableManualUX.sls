# windows:SUPPORTED_Windows8
#
# This policy setting controls whether the Classification tab is displayed in the Properties dialog box in File Explorer.
# 
# The Classification tab enables users to manually classify files by selecting properties from a list. Administrators can define the properties for the organization by using Group Policy, and supplement these with properties defined on individual file servers by using File Classification Infrastructure, which is part of the File Server Resource Manager role service.
# 
# If you enable this policy setting, the Classification tab is displayed.
# 
# If you disable or do not configure this policy setting, the Classification tab is hidden.
'File Classification Infrastructure: Display Classification tab in File Explorer':
  lgpo.set:
  - name: EnableManualUX
  - setting: Enabled
  - policy_class: Machine
