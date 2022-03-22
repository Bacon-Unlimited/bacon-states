# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users are prompted to select a certificate when no certificate or only one certificate exists.
# 
# If you enable this policy setting, Internet Explorer does not prompt users with a "Client Authentication" message when they connect to a Web site that has no certificate or only one certificate.
# 
# If you disable this policy setting, Internet Explorer prompts users with a "Client Authentication" message when they connect to a Web site that has no certificate or only one certificate.
# 
# If you do not configure this policy setting, Internet Explorer prompts users with a Client Authentication message when they connect to a Web site that has no certificate or only one certificate.
Do not prompt for client certificate selection when no certificates or only one certificate exists.:
  lgpo.set:
  - name: IZ_PolicyNoPromptForOneOrNoClientCertificate_10
  - setting:
      IZ_Partname1A04: enum-placeholder
  - policy_class: Machine
