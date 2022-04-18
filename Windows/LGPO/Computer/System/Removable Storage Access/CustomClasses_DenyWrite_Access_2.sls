# windows:SUPPORTED_WindowsVista
#
# This policy setting denies write access to custom removable storage classes.
# 
# If you enable this policy setting, write access is denied to these removable storage classes.
# 
# If you disable or do not configure this policy setting, write access is allowed to these removable storage classes.
'Custom Classes: Deny write access':
  lgpo.set:
  - name: CustomClasses_DenyWrite_Access_2
  - setting:
      CustomClasses_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
