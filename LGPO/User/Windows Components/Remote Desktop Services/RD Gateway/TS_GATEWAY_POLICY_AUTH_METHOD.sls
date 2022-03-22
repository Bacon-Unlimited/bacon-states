# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# Specifies the authentication method that clients must use when attempting to connect to an RD Session Host server through an RD Gateway server. You can enforce this policy setting or you can allow users to overwrite this policy setting. By default, when you enable this policy setting, it is enforced. When this policy setting is enforced, users cannot override this setting, even if they select the "Use these RD Gateway server settings" option on the client.
# 
# To allow users to overwrite this policy setting, select the "Allow users to change this setting" check box. When you do this, users can specify an alternate authentication method by configuring settings on the client, using an RDP file, or using an HTML script. If users do not specify an alternate authentication method, the authentication method that you specify in this policy setting is used by default.
# 
# If you disable or do not configure this policy setting, the authentication method that is specified by the user is used, if one is specified. If an authentication method is not specified, the Negotiate protocol that is enabled on the client or a smart card can be used for authentication.
Set RD Gateway authentication method:
  lgpo.set:
  - name: TS_GATEWAY_POLICY_AUTH_METHOD
  - setting:
      TS_GATEWAY_AUTH_MODE: enum-placeholder
      TS_GATEWAY_OVERRIDE: boolean-placeholder
  - policy_class: User
