# SUPPORTED_WindowsNET_Enterprise
#
# This policy setting allows you to specify whether the RD Session Host server should join a farm in RD Connection Broker. RD Connection Broker tracks user sessions and allows a user to reconnect to their existing session in a load-balanced RD Session Host server farm. To participate in RD Connection Broker, the Remote Desktop Session Host role service must be installed on the server.
# 
# If the policy setting is enabled, the RD Session Host server joins the farm that is specified in the RD Connection Broker farm name policy setting. The farm exists on the RD Connection Broker server that is specified in the Configure RD Connection Broker server name policy setting.
# 
# If you disable this policy setting, the server does not join a farm in RD Connection Broker, and user session tracking is not performed. If the policy setting is disabled, you cannot use either the Remote Desktop Session Host Configuration tool or the Remote Desktop Services WMI Provider to join the server to RD Connection Broker.
# 
# If the policy setting is not configured, the policy setting is not specified at the Group Policy level. 
# 
# Notes:
# 
#     1. If you enable this policy setting, you must also enable the Configure RD Connection Broker farm name and Configure RD Connection Broker server name policy settings.
# 
#     2. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
# 
Join RD Connection Broker:
  lgpo.set:
  - name: TS_JOIN_SESSION_DIRECTORY
  - setting: Enabled
  - policy_class: Machine
