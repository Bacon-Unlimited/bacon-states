# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# If you enable this policy setting, when Remote Desktop Connection cannot connect directly to a remote computer (an RD Session Host server or a computer with Remote Desktop enabled), the clients will attempt to connect to the remote computer through an RD Gateway server. In this case, the clients will attempt to connect to the RD Gateway server that is specified in the "Set RD Gateway server address" policy setting.
# 
# You can enforce this policy setting or you can allow users to overwrite this setting. By default, when you enable this policy setting, it is enforced. When this policy setting is enforced, users cannot override this setting, even if they select the "Use these RD Gateway server settings" option on the client.
# 
# Note: To enforce this policy setting, you must also specify the address of the RD Gateway server by using the "Set RD Gateway server address" policy setting, or client connection attempts to any remote computer will fail, if the client cannot connect directly to the remote computer. To enhance security, it is also highly recommended that you specify the authentication method by using the "Set RD Gateway authentication method" policy setting. If you do not specify an authentication method by using this policy setting, either the NTLM protocol that is enabled on the client or a smart card can be used.
# 
# To allow users to overwrite this policy setting, select the "Allow users to change this setting" check box. When you do this, users on the client can choose not to connect through the RD Gateway server by selecting the "Do not use an RD Gateway server" option. Users can specify a connection method by configuring settings on the client, using an RDP file, or using an HTML script. If users do not specify a connection method, the connection method that you specify in this policy setting is used by default.
# 
# If you disable or do not configure this policy setting, clients will not use the RD Gateway server address that is specified in the "Set RD Gateway server address" policy setting. If an RD Gateway server is specified by the user, a client connection attempt will be made through that RD Gateway server.
# 
Enable connection through RD Gateway:
  lgpo.set:
  - name: TS_GATEWAY_POLICY_ENABLE
  - setting:
      TS_GATEWAY_OVERRIDE: boolean-placeholder
  - policy_class: User
