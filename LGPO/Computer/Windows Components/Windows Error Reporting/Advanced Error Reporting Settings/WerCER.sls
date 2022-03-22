# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies a corporate server to which Windows Error Reporting sends reports (if you do not want to send error reports to Microsoft).
# 
# If you enable this policy setting, you can specify the name or IP address of an error report destination server on your organization’s network. You can also select Connect using SSL to transmit error reports over a Secure Sockets Layer (SSL) connection, and specify a port number on the destination server for transmission.
# 
# If you disable or do not configure this policy setting, Windows Error Reporting sends error reports to Microsoft.
Configure Corporate Windows Error Reporting:
  lgpo.set:
  - name: WerCER
  - setting:
      WerCERCorporatePortNumber: decimal-placeholder
      WerCERServer: text-placeholder
      WerCERUseSSL: boolean-placeholder
      WerCerUploadOnFreeNetworksOnly: boolean-placeholder
  - policy_class: Machine
