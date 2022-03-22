# windows:SUPPORTED_WindowsNET
#
# Specifies whether Remote Desktop Services limits the number of simultaneous connections to the server.
# 
# You can use this setting to restrict the number of Remote Desktop Services sessions that can be active on a server. If this number is exceeded, addtional users who try to connect receive an error message telling them that the server is busy and to try again later. Restricting the number of sessions improves performance because fewer sessions are demanding system resources. By default, RD Session Host servers allow an unlimited number of Remote Desktop Services sessions, and Remote Desktop for Administration allows two Remote Desktop Services sessions.
# 
# To use this setting, enter the number of connections you want to specify as the maximum for the server. To specify an unlimited number of connections, type 999999.
# 
# If the status is set to Enabled, the maximum number of connections is limited to the specified number consistent with the version of Windows and the mode of Remote Desktop Services running on the server.
# 
# If the status is set to Disabled or Not Configured, limits to the number of connections are not enforced at the Group Policy level.
# 
# Note: This setting is designed to be used on RD Session Host servers (that is, on servers running Windows with Remote Desktop Session Host role service installed).
Limit number of connections:
  lgpo.set:
  - name: TS_MAX_CON_POLICY
  - setting:
      TS_Maximum_Connections_allowed: decimal-placeholder
  - policy_class: Machine
