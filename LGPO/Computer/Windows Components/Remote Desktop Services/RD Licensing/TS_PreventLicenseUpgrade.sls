# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to specify which version of Remote Desktop Services client access license (RDS CAL) a Remote Desktop Services license server will issue to clients connecting to RD Session Host servers running other Windows-based operating systems.
# 
# A license server attempts to provide the most appropriate RDS or TS CAL for a connection. For example, a Windows Server 2008 license server will try to issue a Windows Server 2008 TS CAL for clients connecting to a terminal server running Windows Server 2008, and will try to issue a Windows Server 2003 TS CAL for clients connecting to a terminal server running Windows Server 2003.
# 
# By default, if the most appropriate RDS CAL is not available for a connection, a Windows Server 2008 license server will issue a Windows Server 2008 TS CAL, if available, to the following:
# 
# * A client connecting to a Windows Server 2003 terminal server
# * A client connecting to a Windows 2000 terminal server
# 
# If you enable this policy setting, the license server will only issue a temporary RDS CAL to the client if an appropriate RDS CAL for the RD Session Host server is not available. If the client has already been issued a temporary RDS CAL and the temporary RDS CAL has expired, the client will not be able to connect to the RD Session Host server unless the RD Licensing grace period for the RD Session Host server has not expired.
# 
# If you disable or do not configure this policy setting, the license server will exhibit the default behavior noted earlier.
Prevent license upgrade:
  lgpo.set:
  - name: TS_PreventLicenseUpgrade
  - setting: Enabled
  - policy_class: Machine
