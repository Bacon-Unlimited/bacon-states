# windows:SUPPORTED_WindowsVista
#
# This policy setting denies read access to custom removable storage classes.
# 
# If you enable this policy setting, read access is denied to these removable storage classes.
# 
# If you disable or do not configure this policy setting, read access is allowed to these removable storage classes.
'Custom Classes: Deny read access':
  lgpo.set:
  - name: CustomClasses_DenyRead_Access_2
  - setting:
      CustomClasses_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
