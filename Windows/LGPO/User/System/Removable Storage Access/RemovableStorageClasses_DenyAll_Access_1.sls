# windows:SUPPORTED_WindowsVista
#
# Configure access to all removable storage classes.
# 
# This policy setting takes precedence over any individual removable storage policy settings. To manage individual classes, use the policy settings available for each class.
# 
# If you enable this policy setting, no access is allowed to any removable storage class.
# 
# If you disable or do not configure this policy setting, write and read accesses are allowed to all removable storage classes.
'All Removable Storage classes: Deny all access':
  lgpo.set:
  - name: RemovableStorageClasses_DenyAll_Access_1
  - setting: Enabled
  - policy_class: User
