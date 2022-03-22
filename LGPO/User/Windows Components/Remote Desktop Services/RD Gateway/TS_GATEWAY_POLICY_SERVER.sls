# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# Specifies the address of the RD Gateway server that clients must use when attempting to connect to an RD Session Host server. You can enforce this policy setting or you can allow users to overwrite this policy setting. By default, when you enable this policy setting, it is enforced. When this policy setting is enforced, users cannot override this setting, even if they select the "Use these RD Gateway server settings" option on the client.
# 
# Note: It is highly recommended that you also specify the authentication method by using the "Set RD Gateway authentication method" policy setting. If you do not specify an authentication method by using this setting, either the NTLM protocol that is enabled on the client or a smart card can be used.
# 
# To allow users to overwrite the "Set RD Gateway server address" policy setting and connect to another RD Gateway server, you must select the "Allow users to change this setting" check box and users will be allowed to specify an alternate RD Gateway server. Users can specify an alternative RD Gateway server by configuring settings on the client, using an RDP file, or using an HTML script. If users do not specify an alternate RD Gateway server, the server that you specify in this policy setting is used by default.
# 
# Note: If you disable or do not configure this policy setting, but enable the "Enable connections through RD Gateway" policy setting, client connection attempts to any remote computer will fail, if the client cannot connect directly to the remote computer. If an RD Gateway server is specified by the user, a client connection attempt will be made through that RD Gateway server.
Set RD Gateway server address:
  lgpo.set:
  - name: TS_GATEWAY_POLICY_SERVER
  - setting:
      TS_GATEWAY_OVERRIDE: boolean-placeholder
      TS_GATEWAY_SERVER: text-placeholder
  - policy_class: User
