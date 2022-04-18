# windows:SUPPORTED_Windows8
#
# 
# This policy setting allows you to specify a location where all default Library definition files for users/machines reside.
# 
# If you enable this policy setting, administrators can specify a path where all default Library definition files for users reside. The user will not be allowed to make changes to these Libraries from the UI. On every logon, the policy settings are verified and Libraries for the user are updated or changed according to the path defined.
# 
# If you disable or do not configure this policy setting, no changes are made to the location of the default Library definition files.
#       
Location where all default Library definition files for users/machines reside.:
  lgpo.set:
  - name: DefaultLibrariesLocation
  - setting:
      DefaultLibrariesLocation: text-placeholder
  - policy_class: Machine
