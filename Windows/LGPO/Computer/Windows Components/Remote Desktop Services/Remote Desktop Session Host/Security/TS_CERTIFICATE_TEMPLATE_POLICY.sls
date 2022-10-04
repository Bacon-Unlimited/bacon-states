####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security\TS_CERTIFICATE_TEMPLATE_POLICY.sls
#
# SUPPORTED WINDOWS OS
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
