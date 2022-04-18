# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify the name of the certificate template that determines which certificate is automatically selected to authenticate an RD Session Host server.
# 
# A certificate is needed to authenticate an RD Session Host server when TLS 1.0, 1.1 or 1.2 is used to secure communication between a client and an RD Session Host server during RDP connections.
# 
# If you enable this policy setting, you need to specify a certificate template name. Only certificates created by using the specified certificate template will be considered when a certificate to authenticate the RD Session Host server is automatically selected. Automatic certificate selection only occurs when a specific certificate has not been selected.
# 
# If no certificate can be found that was created with the specified certificate template, the RD Session Host server will issue a certificate enrollment request and will use the current certificate until the request is completed. If more than one certificate is found that was created with the specified certificate template, the certificate that will expire latest and that matches the current name of the RD Session Host server will be selected.
# 
# If you disable or do not configure this policy, the certificate template name is not specified at the Group Policy level. By default, a self-signed certificate is used to authenticate the RD Session Host server.  
# 
# Note: If you select a specific certificate to be used to authenticate the RD Session Host server, that certificate will take precedence over this policy setting.
# 
Server authentication certificate template:
  lgpo.set:
  - name: TS_CERTIFICATE_TEMPLATE_POLICY
  - setting:
      TS_CERTIFICATE_TEMPLATE_NAME: text-placeholder
  - policy_class: Machine
