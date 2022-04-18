# windows:SUPPORTED_Windows8
#
# This policy specifies the path to a file (e.g. either stored locally or on a network location) that contains file type and protocol default application associations. This file can be created using the DISM tool.
# 
# For example:
# Dism.exe /Online /Export-DefaultAppAssociations:C:\AppAssoc.txt
# 
# For more information, refer to the DISM documentation on TechNet.
# 
# If this group policy is enabled and the client machine is domain-joined, the file will be processed and default associations will be applied at logon time.
# 
# If the group policy is not configured, disabled, or the client machine is not domain-joined, no default associations will be applied at logon time.
# 
# If the policy is enabled, disabled, or not configured, users will still be able to override default file type and protocol associations.
Set a default associations configuration file:
  lgpo.set:
  - name: DefaultAssociationsConfiguration
  - setting:
      DefaultAssociationsConfiguration_TextBox: text-placeholder
  - policy_class: Machine
