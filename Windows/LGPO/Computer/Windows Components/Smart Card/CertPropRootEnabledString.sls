# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage the root certificate propagation that occurs when a smart card is inserted.
# 
# If you enable or do not configure this policy setting then root certificate propagation will occur when you insert your smart card.  Note: For this policy setting to work the following policy setting must also be enabled: Turn on certificate propagation from smart card.
# 
# If you disable this policy setting then root certificates will not be propagated from the smart card.
Turn on root certificate propagation from smart card:
  lgpo.set:
  - name: CertPropRootEnabledString
  - setting: Enabled
  - policy_class: Machine
