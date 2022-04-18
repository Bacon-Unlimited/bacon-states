# windows:SUPPORTED_Windows7ToXP
#
# This policy setting allows you to specify the maximum color resolution (color depth) for Remote Desktop Services connections.
# 
# You can use this policy setting to set a limit on the color depth of any connection that uses RDP. Limiting the color depth can improve connection performance, particularly over slow links, and reduce server load.
# 
# If you enable this policy setting, the color depth that you specify is the maximum color depth allowed for a user's RDP connection. The actual color depth for the connection is determined by the color support available on the client computer. If you select Client Compatible, the highest color depth supported by the client will be used.
# 
# If you disable or do not configure this policy setting, the color depth for connections is not specified at the Group Policy level.
# 
# Note:
# 1.	Setting the color depth to 24 bits is only supported on Windows Server 2003 and Windows XP Professional.
# 2.	The value specified in this policy setting is not applied to connections from client computers that are using at least Remote Desktop Protocol 8.0 (computers running at least Windows 8 or Windows Server 2012). The 32-bit color depth format is always used for these connections.
# 3.	For connections from client computers that are using Remote Desktop Protocol 7.1 or earlier versions that are connecting to computers running at least Windows 8 or Windows Server 2012, the minimum of the following values is used as the color depth format:
# a.	Value specified by this policy setting
# b.	Maximum color depth supported by the client
# c.	Value requested by the client
# 
# If the client does not support at least 16 bits, the connection is terminated.
#       
Limit maximum color depth:
  lgpo.set:
  - name: TS_COLORDEPTH
  - setting:
      TS_Color_Depth: enum-placeholder
  - policy_class: Machine
