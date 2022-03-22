# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage the certificate propagation that occurs when a smart card is inserted.
# 
# If you enable or do not configure this policy setting then certificate propagation will occur when you insert your smart card.
# 
# If you disable this policy setting, certificate propagation will not occur and the certificates will not be made available to applications such as Outlook.
Turn on certificate propagation from smart card:
  lgpo.set:
  - name: CertPropEnabledString
  - setting: Enabled
  - policy_class: Machine
