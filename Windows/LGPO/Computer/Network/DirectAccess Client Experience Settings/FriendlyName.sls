# windows:SUPPORTED_Windows7
#
# Specifies the string that appears for DirectAccess connectivity when the user clicks the Networking notification area icon. For example, you can specify Contoso Intranet Access for the DirectAccess clients of the Contoso Corporation.
# 
# If this setting is not configured, the string that appears for DirectAccess connectivity is Corporate Connection.
# 
Friendly Name:
  lgpo.set:
  - name: FriendlyName
  - setting:
      FriendlyName_Control: text-placeholder
  - policy_class: Machine
