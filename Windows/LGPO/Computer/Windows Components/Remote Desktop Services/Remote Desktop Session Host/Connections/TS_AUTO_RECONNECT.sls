# windows:SUPPORTED_WindowsXP
#
# Specifies whether to allow Remote Desktop Connection clients to automatically reconnect to sessions on an RD Session Host server if their network link is temporarily lost. By default, a maximum  of twenty reconnection attempts are made at five second intervals.
# 
# If the status is set to Enabled, automatic reconnection is attempted for all clients running Remote Desktop Connection whenever their network connection is lost.
# 
# If the status is set to Disabled, automatic reconnection of clients is prohibited.
# 
# If the status is set to Not Configured, automatic reconnection is not specified at the  Group Policy level. However, users can configure automatic reconnection using the "Reconnect if connection is dropped" checkbox on the Experience tab in Remote Desktop Connection.
# 
Automatic reconnection:
  lgpo.set:
  - name: TS_AUTO_RECONNECT
  - setting: Enabled
  - policy_class: Machine
