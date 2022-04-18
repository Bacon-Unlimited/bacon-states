# TS_SUPPORTED_Vista_SP1
#
# This policy setting allows you to specify whether the client will establish a connection to the RD Session Host server when the client cannot authenticate the RD Session Host server.
# 
# If you enable this policy setting, you must specify one of the following settings:
# 
# Always connect, even if authentication fails: The client connects to the RD Session Host server even if the client cannot authenticate the RD Session Host server.
# 
# Warn me if authentication fails: The client attempts to authenticate the RD Session Host server. If the RD Session Host server can be authenticated, the client establishes a connection to the RD Session Host server. If the RD Session Host server cannot be authenticated, the user is prompted to choose whether to connect to the RD Session Host server without authenticating the RD Session Host server.
# 
# Do not connect if authentication fails: The client establishes a connection to the RD Session Host server only if the RD Session Host server can be authenticated.
# 
# If you disable or do not configure this policy setting, the authentication setting that is specified in Remote Desktop Connection or in the .rdp file determines whether the client establishes a connection to the RD Session Host server when the client cannot authenticate the RD Session Host server.
# 
Configure server authentication for client:
  lgpo.set:
  - name: TS_SERVER_AUTH
  - setting:
      TS_SERVER_AUTH_LEVEL: enum-placeholder
  - policy_class: Machine
