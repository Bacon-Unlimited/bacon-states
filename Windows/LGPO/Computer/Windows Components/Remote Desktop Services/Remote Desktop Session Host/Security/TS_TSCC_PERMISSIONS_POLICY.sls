# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies whether to disable the administrator rights to customize security permissions for the Remote Desktop Session Host server.  
# 
# You can use this setting to prevent administrators from making changes to the user groups allowed to connect remotely to the  RD Session Host server. By default, administrators are able to make such changes.
# 
# If you enable this policy setting the default security descriptors for existing groups on the RD Session Host server cannot be changed. All the security descriptors are read-only.
# 
# If you disable or do not configure this policy setting, server administrators have full read/write permissions to the user security descriptors by using the Remote Desktop Session WMI Provider.
# 
# Note: The preferred method of managing user access is by adding a user to the Remote Desktop Users group.
# 
Do not allow local administrators to customize permissions:
  lgpo.set:
  - name: TS_TSCC_PERMISSIONS_POLICY
  - setting: Enabled
  - policy_class: Machine
