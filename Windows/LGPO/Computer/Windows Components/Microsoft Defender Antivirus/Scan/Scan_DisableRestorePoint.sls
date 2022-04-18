# windows:SUPPORTED_Windows8
#
# This policy setting allows you to create a system restore point on the computer on a daily basis prior to cleaning. 
# 
#     If you enable this setting, a system restore point will be created.
# 
#     If you disable or do not configure this setting, a system restore point will not be created.
Create a system restore point:
  lgpo.set:
  - name: Scan_DisableRestorePoint
  - setting: Enabled
  - policy_class: Machine
